/**
 * Universal Node Type Normalizer
 *
 * This class converts node types to FULL form (n8n-nodes-base.*) which is
 * the canonical format used in both the database and the n8n API.
 *
 * Both the database and n8n API use FULL form:
 * - n8n-nodes-base.webhook
 * - @n8n/n8n-nodes-langchain.agent
 *
 * normalizeToFullForm() accepts any format and returns FULL form:
 * - 'nodes-base.webhook' → 'n8n-nodes-base.webhook'
 * - 'n8n-nodes-base.webhook' → 'n8n-nodes-base.webhook' (unchanged)
 *
 * @example Database Lookup
 * const dbType = NodeTypeNormalizer.normalizeToFullForm('nodes-base.webhook')
 * // → 'n8n-nodes-base.webhook'
 * const node = await repository.getNode(dbType)
 */

export interface NodeTypeNormalizationResult {
  original: string;
  normalized: string;
  wasNormalized: boolean;
  package: 'base' | 'langchain' | 'community' | 'unknown';
}

export class NodeTypeNormalizer {
  /**
   * Normalize node type to FULL form (n8n-nodes-base.*).
   * Database stores FULL form, so this converts SHORT→FULL for backward compatibility.
   *
   * @param type - Node type in any format
   * @returns Normalized node type in full form (database format)
   *
   * @example
   * normalizeToFullForm('nodes-base.webhook')
   * // → 'n8n-nodes-base.webhook'
   *
   * @example
   * normalizeToFullForm('n8n-nodes-base.webhook')
   * // → 'n8n-nodes-base.webhook' (unchanged)
   *
   * @example
   * normalizeToFullForm('nodes-langchain.agent')
   * // → '@n8n/n8n-nodes-langchain.agent'
   */
  static normalizeToFullForm(type: string): string {
    if (!type || typeof type !== 'string') {
      return type;
    }

    // Already in full form — pass through
    if (type.startsWith('n8n-nodes-base.')) return type;
    if (type.startsWith('@n8n/n8n-nodes-langchain.')) return type;
    if (type.startsWith('n8n-nodes-langchain.')) return type;

    // Convert SHORT form → FULL form
    if (type.startsWith('nodes-base.')) {
      return type.replace(/^nodes-base\./, 'n8n-nodes-base.');
    }
    if (type.startsWith('nodes-langchain.')) {
      return type.replace(/^nodes-langchain\./, '@n8n/n8n-nodes-langchain.');
    }

    // Community nodes or unknown — unchanged
    return type;
  }

  /**
   * Normalize with detailed result including metadata
   *
   * Use this when you need to know if normalization occurred
   * or what package the node belongs to.
   *
   * @param type - Node type in any format
   * @returns Detailed normalization result
   *
   * @example
   * normalizeWithDetails('nodes-base.webhook')
   * // → {
   * //   original: 'nodes-base.webhook',
   * //   normalized: 'n8n-nodes-base.webhook',
   * //   wasNormalized: true,
   * //   package: 'base'
   * // }
   */
  static normalizeWithDetails(type: string): NodeTypeNormalizationResult {
    const original = type;
    const normalized = this.normalizeToFullForm(type);

    return {
      original,
      normalized,
      wasNormalized: original !== normalized,
      package: this.detectPackage(normalized)
    };
  }

  /**
   * Detect package type from node type
   *
   * @param type - Node type (in any form)
   * @returns Package identifier
   */
  private static detectPackage(type: string): 'base' | 'langchain' | 'community' | 'unknown' {
    // Check both short and full forms
    if (type.startsWith('nodes-base.') || type.startsWith('n8n-nodes-base.')) return 'base';
    if (type.startsWith('nodes-langchain.') || type.startsWith('@n8n/n8n-nodes-langchain.') || type.startsWith('n8n-nodes-langchain.')) return 'langchain';
    if (type.includes('.')) return 'community';
    return 'unknown';
  }

  /**
   * Batch normalize multiple node types
   *
   * Use this when you need to normalize multiple types at once.
   *
   * @param types - Array of node types
   * @returns Map of original → normalized types
   *
   * @example
   * normalizeBatch(['nodes-base.webhook', 'nodes-base.set'])
   * // → Map {
   * //   'nodes-base.webhook' => 'n8n-nodes-base.webhook',
   * //   'nodes-base.set' => 'n8n-nodes-base.set'
   * // }
   */
  static normalizeBatch(types: string[]): Map<string, string> {
    const result = new Map<string, string>();
    for (const type of types) {
      result.set(type, this.normalizeToFullForm(type));
    }
    return result;
  }

  /**
   * Normalize all node types in a workflow
   *
   * This is the key method for fixing workflows before validation.
   * It normalizes all node types in place while preserving all other
   * workflow properties.
   *
   * @param workflow - Workflow object with nodes array
   * @returns Workflow with normalized node types
   *
   * @example
   * const workflow = {
   *   nodes: [
   *     { type: 'nodes-base.webhook', id: '1', name: 'Webhook' },
   *     { type: 'nodes-base.set', id: '2', name: 'Set' }
   *   ],
   *   connections: {}
   * };
   * const normalized = normalizeWorkflowNodeTypes(workflow);
   * // workflow.nodes[0].type → 'n8n-nodes-base.webhook'
   * // workflow.nodes[1].type → 'n8n-nodes-base.set'
   */
  static normalizeWorkflowNodeTypes(workflow: any): any {
    if (!workflow?.nodes || !Array.isArray(workflow.nodes)) {
      return workflow;
    }

    return {
      ...workflow,
      nodes: workflow.nodes.map((node: any) => ({
        ...node,
        type: this.normalizeToFullForm(node.type)
      }))
    };
  }

  /**
   * Check if a node type is in full form (n8n-nodes-base.*, @n8n/n8n-nodes-langchain.*)
   *
   * @param type - Node type to check
   * @returns True if in full form
   */
  static isFullForm(type: string): boolean {
    if (!type || typeof type !== 'string') {
      return false;
    }

    return (
      type.startsWith('n8n-nodes-base.') ||
      type.startsWith('@n8n/n8n-nodes-langchain.') ||
      type.startsWith('n8n-nodes-langchain.')
    );
  }

  /**
   * Check if a node type is in short form (nodes-base.*, nodes-langchain.*)
   *
   * @param type - Node type to check
   * @returns True if in short form (legacy format, needs normalization)
   */
  static isShortForm(type: string): boolean {
    if (!type || typeof type !== 'string') {
      return false;
    }

    return (
      type.startsWith('nodes-base.') ||
      type.startsWith('nodes-langchain.')
    );
  }

  /**
   * Convert short form to full n8n workflow format.
   *
   * This method converts node types from SHORT form to FULL form.
   * Now equivalent to normalizeToFullForm(), kept for semantic clarity.
   *
   * @param type - Node type in short database format (e.g., 'nodes-base.webhook')
   * @returns Node type in full workflow format (e.g., 'n8n-nodes-base.webhook')
   *
   * @example
   * toWorkflowFormat('nodes-base.webhook')
   * // → 'n8n-nodes-base.webhook'
   *
   * @example
   * toWorkflowFormat('nodes-langchain.agent')
   * // → '@n8n/n8n-nodes-langchain.agent'
   *
   * @example
   * toWorkflowFormat('n8n-nodes-base.webhook')
   * // → 'n8n-nodes-base.webhook' (already in full format)
   */
  static toWorkflowFormat(type: string): string {
    if (!type || typeof type !== 'string') {
      return type;
    }

    // Convert short form to full form (API/workflow format)
    if (type.startsWith('nodes-base.')) {
      return type.replace(/^nodes-base\./, 'n8n-nodes-base.');
    }
    if (type.startsWith('nodes-langchain.')) {
      return type.replace(/^nodes-langchain\./, '@n8n/n8n-nodes-langchain.');
    }

    // Already in full form or community node - return unchanged
    return type;
  }
}
