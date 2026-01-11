# Parser Bug Fixes - January 11, 2026

## Summary

This document describes two critical bug fixes made to the n8n-mcp parser system that were causing incorrect node type prefixes and incomplete operation extraction in the database.

---

## Bug #1: Malformed Node Type Prefixes

### Problem
All ~400+ core nodes had malformed type names in the database. Node types were stored as `nodes-base.asana` instead of the correct `n8n-nodes-base.asana`.

### Root Cause
File: `src/parsers/node-parser.ts`, line 137

```typescript
// BEFORE (buggy)
const packagePrefix = packageName.replace('@n8n/', '').replace('n8n-', '');
```

The `.replace('n8n-', '')` call was stripping the `n8n-` prefix from package names.

Data flow:
1. `node-loader.ts` passes `packageName = "n8n-nodes-base"` to parser
2. Line 137 transformed `n8n-nodes-base` → `nodes-base`
3. Final output: `nodes-base.asana` instead of correct `n8n-nodes-base.asana`

### Fix
Removed the erroneous `.replace('n8n-', '')` call:

```typescript
// AFTER (fixed)
// Note: Only strip @n8n/ scope, keep n8n- prefix for correct node types
// e.g., n8n-nodes-base.asana (correct) not nodes-base.asana (wrong)
const packagePrefix = packageName.replace('@n8n/', '');
```

### Verification
```sql
SELECT node_type FROM nodes WHERE node_type LIKE '%asana%' LIMIT 3;
-- Returns:
-- n8n-nodes-base.asana
-- n8n-nodes-base.asanaTool
-- n8n-nodes-base.asanaTrigger
```

---

## Bug #2: Incomplete Operations Extraction

### Problem
Resource-based nodes (Asana, Slack, HubSpot, etc.) only extracted operations for the first resource. For example, Asana showed only 2 operations instead of the full 22 operations across all resources.

### Root Cause
File: `src/parsers/property-extractor.ts`, lines 106-152

The `extractOperationsFromDescription` method used `.find()` to get only the first `operation` property, ignoring additional operation properties that are specific to different resources.

```typescript
// BEFORE (buggy) - only found first operation property
const operationProp = description.properties.find(
  (p: any) => p.name === 'operation' || p.name === 'action'
);
```

### Fix
Enhanced the method to:
1. Find the `resource` property and enumerate all resources
2. Use `.filter()` to find ALL operation properties
3. Match each operation property to its resource via `displayOptions.show.resource`
4. Build a complete resource→operations mapping

Key changes:
```typescript
// AFTER (fixed) - find ALL operation properties
const operationProps = description.properties.filter(
  (p: any) => p.name === 'operation' || p.name === 'action'
);

// Build resource-to-operations mapping
const resourceOperationsMap = new Map<string, any[]>();

// Match operations to resources via displayOptions
operationProps.forEach((opProp: any) => {
  const showResource = opProp.displayOptions?.show?.resource;
  if (showResource && Array.isArray(showResource)) {
    showResource.forEach((resourceValue: string) => {
      // Add operations to the specific resource
    });
  }
});
```

### Verification

**Asana node (before):** ~2 operations
**Asana node (after):** 22 operations across 7 resources

```
- project: 5 operations (create, delete, get, getAll, update)
- subtask: 2 operations (create, getAll)
- task: 7 operations (create, delete, get, getAll, move, search, update)
- taskComment: 2 operations (add, remove)
- taskProject: 2 operations (add, remove)
- taskTag: 2 operations (add, remove)
- user: 2 operations (get, getAll)
```

**Slack node (before):** ~3 operations
**Slack node (after):** 42 operations across 7 resources

```
- channel: 17 operations
- file: 3 operations
- message: 6 operations
- reaction: 3 operations
- star: 3 operations
- user: 5 operations
- userGroup: 5 operations
```

---

## Files Modified

| File | Change Type | Lines Changed |
|------|-------------|---------------|
| `src/parsers/node-parser.ts` | Bug fix | 1 line (line 137) |
| `src/parsers/property-extractor.ts` | Enhancement | ~100 lines (lines 106-229) |
| `tests/unit/parsers/node-parser.test.ts` | Test updates | ~10 assertions |
| `tests/unit/parsers/property-extractor.test.ts` | Test updates + additions | 1 test updated, 1 test added |

---

## Test Results

All 123 parser tests pass:

```
 ✓ tests/unit/parsers/node-parser.test.ts (34 tests)
 ✓ tests/unit/parsers/property-extractor.test.ts (32 tests)
 ✓ tests/unit/parsers/simple-parser.test.ts (39 tests)
 ✓ tests/unit/parsers/node-parser-outputs.test.ts (18 tests)

 Test Files  4 passed (4)
      Tests  123 passed (123)
```

---

## Database Rebuild Summary

After rebuild with fixed parsers:

```
📊 Summary:
   Total nodes: 540
   Successful: 802
   AI Tools: 534
   Tool Variants: 263
   Triggers: 107
   Webhooks: 83
   With Properties: 800
   With Operations: 520
```

---

## Impact on Tech Factory

These fixes ensure:
1. Workflow validation uses correct node types (`n8n-nodes-base.asana`)
2. Operation validation covers all available operations per resource
3. Database queries find nodes correctly
4. Downstream systems (validation, workflow generation) have complete data

---

*Fixes applied: January 11, 2026*
*Author: Claude Code (Option B Implementation)*
