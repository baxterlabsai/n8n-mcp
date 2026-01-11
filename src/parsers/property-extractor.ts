import type { NodeClass } from '../types/node-types';

export class PropertyExtractor {
  /**
   * Extract properties with proper handling of n8n's complex structures
   */
  extractProperties(nodeClass: NodeClass): any[] {
    const properties: any[] = [];
    
    // First try to get instance-level properties
    let instance: any;
    try {
      instance = typeof nodeClass === 'function' ? new nodeClass() : nodeClass;
    } catch (e) {
      // Failed to instantiate
    }
    
    // Handle versioned nodes - check instance for nodeVersions
    if (instance?.nodeVersions) {
      const versions = Object.keys(instance.nodeVersions).map(Number);
      if (versions.length > 0) {
        const latestVersion = Math.max(...versions);
        if (!isNaN(latestVersion)) {
          const versionedNode = instance.nodeVersions[latestVersion];

          if (versionedNode?.description?.properties) {
            return this.normalizeProperties(versionedNode.description.properties);
          }
        }
      }
    }
    
    // Check for description with properties
    const description = instance?.description || instance?.baseDescription || 
                       this.getNodeDescription(nodeClass);
    
    if (description?.properties) {
      return this.normalizeProperties(description.properties);
    }
    
    return properties;
  }
  
  private getNodeDescription(nodeClass: NodeClass): any {
    // Try to get description from the class first
    let description: any;

    if (typeof nodeClass === 'function') {
      // Try to instantiate to get description
      try {
        const instance = new nodeClass();
        // Strategic any assertion for instance properties
        const inst = instance as any;
        description = inst.description || inst.baseDescription || {};
      } catch (e) {
        // Some nodes might require parameters to instantiate
        // Strategic any assertion for class-level properties
        const nodeClassAny = nodeClass as any;
        description = nodeClassAny.description || {};
      }
    } else {
      // Strategic any assertion for instance properties
      const inst = nodeClass as any;
      description = inst.description || {};
    }

    return description;
  }
  
  /**
   * Extract operations from both declarative and programmatic nodes
   */
  extractOperations(nodeClass: NodeClass): any[] {
    const operations: any[] = [];
    
    // First try to get instance-level data
    let instance: any;
    try {
      instance = typeof nodeClass === 'function' ? new nodeClass() : nodeClass;
    } catch (e) {
      // Failed to instantiate
    }
    
    // Handle versioned nodes
    if (instance?.nodeVersions) {
      const versions = Object.keys(instance.nodeVersions).map(Number);
      if (versions.length > 0) {
        const latestVersion = Math.max(...versions);
        if (!isNaN(latestVersion)) {
          const versionedNode = instance.nodeVersions[latestVersion];

          if (versionedNode?.description) {
            return this.extractOperationsFromDescription(versionedNode.description);
          }
        }
      }
    }
    
    // Get description
    const description = instance?.description || instance?.baseDescription || 
                       this.getNodeDescription(nodeClass);
    
    return this.extractOperationsFromDescription(description);
  }
  
  private extractOperationsFromDescription(description: any): any[] {
    const operations: any[] = [];

    if (!description) return operations;

    // Declarative nodes (with routing)
    if (description.routing) {
      const routing = description.routing;

      // Extract from request.resource and request.operation
      if (routing.request?.resource) {
        const resources = routing.request.resource.options || [];
        const operationOptions = routing.request.operation?.options || {};

        resources.forEach((resource: any) => {
          const resourceOps = operationOptions[resource.value] || [];
          resourceOps.forEach((op: any) => {
            operations.push({
              resource: resource.value,
              operation: op.value,
              name: `${resource.name} - ${op.name}`,
              action: op.action
            });
          });
        });
      }
    }

    // Programmatic nodes - look for operations in properties
    if (description.properties && Array.isArray(description.properties)) {
      // First, find the resource property to understand available resources
      const resourceProp = description.properties.find(
        (p: any) => p.name === 'resource'
      );

      // Find ALL operation/action properties (there may be multiple for different resources)
      const operationProps = description.properties.filter(
        (p: any) => p.name === 'operation' || p.name === 'action'
      );

      if (operationProps.length > 0) {
        // Check if this is a resource-based node (has resource property with options)
        const hasResourceOptions = resourceProp?.options && Array.isArray(resourceProp.options);

        if (hasResourceOptions && operationProps.length >= 1) {
          // Resource-based node: extract operations for each resource
          // Build a map of resource -> operations
          const resourceOperationsMap = new Map<string, any[]>();

          // Initialize map with all resources
          resourceProp.options.forEach((res: any) => {
            resourceOperationsMap.set(res.value, []);
          });

          // Match each operation property to its resource via displayOptions
          operationProps.forEach((opProp: any) => {
            if (!opProp.options) return;

            // Check displayOptions.show.resource to determine which resource this belongs to
            const showResource = opProp.displayOptions?.show?.resource;

            if (showResource && Array.isArray(showResource)) {
              // This operation property is tied to specific resource(s)
              showResource.forEach((resourceValue: string) => {
                const existingOps = resourceOperationsMap.get(resourceValue) || [];
                opProp.options.forEach((op: any) => {
                  // Avoid duplicates
                  if (!existingOps.some((existing: any) => existing.operation === op.value)) {
                    existingOps.push({
                      resource: resourceValue,
                      operation: op.value,
                      name: op.name,
                      description: op.description,
                      action: op.action
                    });
                  }
                });
                resourceOperationsMap.set(resourceValue, existingOps);
              });
            } else {
              // No displayOptions.show.resource - applies to all resources or is the default
              // Add to all resources that don't already have this operation
              resourceProp.options.forEach((res: any) => {
                const existingOps = resourceOperationsMap.get(res.value) || [];
                opProp.options.forEach((op: any) => {
                  if (!existingOps.some((existing: any) => existing.operation === op.value)) {
                    existingOps.push({
                      resource: res.value,
                      operation: op.value,
                      name: op.name,
                      description: op.description,
                      action: op.action
                    });
                  }
                });
                resourceOperationsMap.set(res.value, existingOps);
              });
            }
          });

          // Flatten the map into the operations array
          resourceOperationsMap.forEach((ops, resource) => {
            ops.forEach((op: any) => {
              operations.push(op);
            });
          });
        } else {
          // Simple node without resources: extract operations from first operation property
          const operationProp = operationProps[0];
          if (operationProp?.options) {
            operationProp.options.forEach((op: any) => {
              operations.push({
                operation: op.value,
                name: op.name,
                description: op.description
              });
            });
          }
        }
      }
    }

    return operations;
  }
  
  /**
   * Deep search for AI tool capability
   */
  detectAIToolCapability(nodeClass: NodeClass): boolean {
    const description = this.getNodeDescription(nodeClass);

    // Direct property check
    if (description?.usableAsTool === true) return true;

    // Check in actions for declarative nodes
    if (description?.actions?.some((a: any) => a.usableAsTool === true)) return true;

    // Check versioned nodes
    // Strategic any assertion for nodeVersions property
    const nodeClassAny = nodeClass as any;
    if (nodeClassAny.nodeVersions) {
      for (const version of Object.values(nodeClassAny.nodeVersions)) {
        if ((version as any).description?.usableAsTool === true) return true;
      }
    }

    // Check for specific AI-related properties
    const aiIndicators = ['openai', 'anthropic', 'huggingface', 'cohere', 'ai'];
    const nodeName = description?.name?.toLowerCase() || '';

    return aiIndicators.some(indicator => nodeName.includes(indicator));
  }
  
  /**
   * Extract credential requirements with proper structure
   */
  extractCredentials(nodeClass: NodeClass): any[] {
    const credentials: any[] = [];
    
    // First try to get instance-level data
    let instance: any;
    try {
      instance = typeof nodeClass === 'function' ? new nodeClass() : nodeClass;
    } catch (e) {
      // Failed to instantiate
    }
    
    // Handle versioned nodes
    if (instance?.nodeVersions) {
      const versions = Object.keys(instance.nodeVersions).map(Number);
      if (versions.length > 0) {
        const latestVersion = Math.max(...versions);
        if (!isNaN(latestVersion)) {
          const versionedNode = instance.nodeVersions[latestVersion];

          if (versionedNode?.description?.credentials) {
            return versionedNode.description.credentials;
          }
        }
      }
    }
    
    // Check for description with credentials
    const description = instance?.description || instance?.baseDescription || 
                       this.getNodeDescription(nodeClass);
    
    if (description?.credentials) {
      return description.credentials;
    }
    
    return credentials;
  }
  
  private normalizeProperties(properties: any[]): any[] {
    // Ensure all properties have consistent structure
    return properties.map(prop => ({
      displayName: prop.displayName,
      name: prop.name,
      type: prop.type,
      default: prop.default,
      description: prop.description,
      options: prop.options,
      required: prop.required,
      displayOptions: prop.displayOptions,
      typeOptions: prop.typeOptions,
      modes: prop.modes, // For resourceLocator type properties - modes are at top level
      noDataExpression: prop.noDataExpression
    }));
  }
}