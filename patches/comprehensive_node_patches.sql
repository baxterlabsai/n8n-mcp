-- ============================================================================
-- COMPREHENSIVE NODE SCHEMA PATCHES
-- Generated: 2026-01-09 15:04:55
-- Total nodes: 17
-- ============================================================================
--
-- This patch adds complete operation schemas with resource fields for:
--   - 3 CRITICAL nodes
--   - 4 HIGH priority nodes
--   - 9 MEDIUM priority nodes
--   - 1 LOW priority nodes
--
-- All operations extracted from official n8n documentation.
-- Total operations: 340
-- ============================================================================

-- Patch salesforce (51 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "account",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to an account"
  },
  {
    "resource": "account",
    "operation": "create",
    "name": "Create",
    "description": "Create an account"
  },
  {
    "resource": "account",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an account"
  },
  {
    "resource": "account",
    "operation": "get",
    "name": "Get",
    "description": "Get an account"
  },
  {
    "resource": "account",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many accounts"
  },
  {
    "resource": "account",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of account''s metadata"
  },
  {
    "resource": "account",
    "operation": "update",
    "name": "Update",
    "description": "Update an account"
  },
  {
    "resource": "attachment",
    "operation": "create",
    "name": "Create",
    "description": "Create an attachment"
  },
  {
    "resource": "attachment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an attachment"
  },
  {
    "resource": "attachment",
    "operation": "get",
    "name": "Get",
    "description": "Get an attachment"
  },
  {
    "resource": "attachment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many attachments"
  },
  {
    "resource": "attachment",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of attachment''s metadata"
  },
  {
    "resource": "attachment",
    "operation": "update",
    "name": "Update",
    "description": "Update an attachment"
  },
  {
    "resource": "case",
    "operation": "addComment",
    "name": "Add Comment",
    "description": "Add a comment to a case"
  },
  {
    "resource": "case",
    "operation": "create",
    "name": "Create",
    "description": "Create a case"
  },
  {
    "resource": "case",
    "operation": "get",
    "name": "Get",
    "description": "Get a case"
  },
  {
    "resource": "case",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many cases"
  },
  {
    "resource": "case",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of case''s metadata"
  },
  {
    "resource": "case",
    "operation": "update",
    "name": "Update",
    "description": "Update a case"
  },
  {
    "resource": "contact",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to a contact"
  },
  {
    "resource": "contact",
    "operation": "addToCampaign",
    "name": "Add To Campaign",
    "description": "Add contact to a campaign"
  },
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of contact''s metadata"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "customObject",
    "operation": "create",
    "name": "Create",
    "description": "Create a record"
  },
  {
    "resource": "customObject",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a record"
  },
  {
    "resource": "customObject",
    "operation": "get",
    "name": "Get",
    "description": "Get a record"
  },
  {
    "resource": "customObject",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many records"
  },
  {
    "resource": "customObject",
    "operation": "update",
    "name": "Update",
    "description": "Update a record"
  },
  {
    "resource": "document",
    "operation": "upload",
    "name": "Upload",
    "description": "Upload a document"
  },
  {
    "resource": "flow",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Retrieve many flows"
  },
  {
    "resource": "flow",
    "operation": "invoke",
    "name": "Invoke",
    "description": "Invoke a flow"
  },
  {
    "resource": "lead",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to a lead"
  },
  {
    "resource": "lead",
    "operation": "addToCampaign",
    "name": "Add To Campaign",
    "description": "Add lead to a campaign"
  },
  {
    "resource": "lead",
    "operation": "create",
    "name": "Create",
    "description": "Create a lead"
  },
  {
    "resource": "lead",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a lead"
  },
  {
    "resource": "lead",
    "operation": "get",
    "name": "Get",
    "description": "Get a lead"
  },
  {
    "resource": "lead",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many leads"
  },
  {
    "resource": "lead",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of lead''s metadata"
  },
  {
    "resource": "lead",
    "operation": "update",
    "name": "Update",
    "description": "Update a lead"
  },
  {
    "resource": "opportunity",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "create",
    "name": "Create",
    "description": "Create an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "get",
    "name": "Get",
    "description": "Get an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many opportunities"
  },
  {
    "resource": "opportunity",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of opportunity''s metadata"
  },
  {
    "resource": "opportunity",
    "operation": "update",
    "name": "Update",
    "description": "Update an opportunity"
  },
  {
    "resource": "search",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Execute a search"
  }
]')
WHERE node_type = 'nodes-base.salesforce';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "account",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to an account"
  },
  {
    "resource": "account",
    "operation": "create",
    "name": "Create",
    "description": "Create an account"
  },
  {
    "resource": "account",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an account"
  },
  {
    "resource": "account",
    "operation": "get",
    "name": "Get",
    "description": "Get an account"
  },
  {
    "resource": "account",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many accounts"
  },
  {
    "resource": "account",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of account''s metadata"
  },
  {
    "resource": "account",
    "operation": "update",
    "name": "Update",
    "description": "Update an account"
  },
  {
    "resource": "attachment",
    "operation": "create",
    "name": "Create",
    "description": "Create an attachment"
  },
  {
    "resource": "attachment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an attachment"
  },
  {
    "resource": "attachment",
    "operation": "get",
    "name": "Get",
    "description": "Get an attachment"
  },
  {
    "resource": "attachment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many attachments"
  },
  {
    "resource": "attachment",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of attachment''s metadata"
  },
  {
    "resource": "attachment",
    "operation": "update",
    "name": "Update",
    "description": "Update an attachment"
  },
  {
    "resource": "case",
    "operation": "addComment",
    "name": "Add Comment",
    "description": "Add a comment to a case"
  },
  {
    "resource": "case",
    "operation": "create",
    "name": "Create",
    "description": "Create a case"
  },
  {
    "resource": "case",
    "operation": "get",
    "name": "Get",
    "description": "Get a case"
  },
  {
    "resource": "case",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many cases"
  },
  {
    "resource": "case",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of case''s metadata"
  },
  {
    "resource": "case",
    "operation": "update",
    "name": "Update",
    "description": "Update a case"
  },
  {
    "resource": "contact",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to a contact"
  },
  {
    "resource": "contact",
    "operation": "addToCampaign",
    "name": "Add To Campaign",
    "description": "Add contact to a campaign"
  },
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of contact''s metadata"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "customObject",
    "operation": "create",
    "name": "Create",
    "description": "Create a record"
  },
  {
    "resource": "customObject",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a record"
  },
  {
    "resource": "customObject",
    "operation": "get",
    "name": "Get",
    "description": "Get a record"
  },
  {
    "resource": "customObject",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many records"
  },
  {
    "resource": "customObject",
    "operation": "update",
    "name": "Update",
    "description": "Update a record"
  },
  {
    "resource": "document",
    "operation": "upload",
    "name": "Upload",
    "description": "Upload a document"
  },
  {
    "resource": "flow",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Retrieve many flows"
  },
  {
    "resource": "flow",
    "operation": "invoke",
    "name": "Invoke",
    "description": "Invoke a flow"
  },
  {
    "resource": "lead",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to a lead"
  },
  {
    "resource": "lead",
    "operation": "addToCampaign",
    "name": "Add To Campaign",
    "description": "Add lead to a campaign"
  },
  {
    "resource": "lead",
    "operation": "create",
    "name": "Create",
    "description": "Create a lead"
  },
  {
    "resource": "lead",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a lead"
  },
  {
    "resource": "lead",
    "operation": "get",
    "name": "Get",
    "description": "Get a lead"
  },
  {
    "resource": "lead",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many leads"
  },
  {
    "resource": "lead",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of lead''s metadata"
  },
  {
    "resource": "lead",
    "operation": "update",
    "name": "Update",
    "description": "Update a lead"
  },
  {
    "resource": "opportunity",
    "operation": "addNote",
    "name": "Add Note",
    "description": "Add note to an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "create",
    "name": "Create",
    "description": "Create an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "get",
    "name": "Get",
    "description": "Get an opportunity"
  },
  {
    "resource": "opportunity",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many opportunities"
  },
  {
    "resource": "opportunity",
    "operation": "getSummary",
    "name": "Get Summary",
    "description": "Returns an overview of opportunity''s metadata"
  },
  {
    "resource": "opportunity",
    "operation": "update",
    "name": "Update",
    "description": "Update an opportunity"
  },
  {
    "resource": "search",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Execute a search"
  }
]')
WHERE node_type = 'nodes-base.salesforceTool';

-- Patch googleSheets (4 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "document",
    "operation": "create",
    "name": "Create",
    "description": "Create a document"
  },
  {
    "resource": "document",
    "operation": "read",
    "name": "Read",
    "description": "Read a document"
  },
  {
    "resource": "document",
    "operation": "update",
    "name": "Update",
    "description": "Update a document"
  },
  {
    "resource": "document",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a document"
  }
]')
WHERE node_type = 'nodes-base.googleSheets';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "document",
    "operation": "create",
    "name": "Create",
    "description": "Create a document"
  },
  {
    "resource": "document",
    "operation": "read",
    "name": "Read",
    "description": "Read a document"
  },
  {
    "resource": "document",
    "operation": "update",
    "name": "Update",
    "description": "Update a document"
  },
  {
    "resource": "document",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a document"
  }
]')
WHERE node_type = 'nodes-base.googleSheetsTool';

-- Patch jira (25 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "update",
    "name": "Update",
    "description": "Update an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issues"
  },
  {
    "resource": "issue",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an issue"
  },
  {
    "resource": "issue",
    "operation": "changelog",
    "name": "Get Issue Changelog",
    "description": "Get issue changelog"
  },
  {
    "resource": "issue",
    "operation": "comment",
    "name": "Add Comment",
    "description": "Add comment to issue"
  },
  {
    "resource": "issue",
    "operation": "attach",
    "name": "Add Attachment",
    "description": "Add attachment to issue"
  },
  {
    "resource": "issue",
    "operation": "notify",
    "name": "Send Notification",
    "description": "Send notification for issue"
  },
  {
    "resource": "issue",
    "operation": "transition",
    "name": "Transition Issue",
    "description": "Transition issue to different status"
  },
  {
    "resource": "issueAttachment",
    "operation": "get",
    "name": "Get",
    "description": "Get issue attachment"
  },
  {
    "resource": "issueAttachment",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issue attachments"
  },
  {
    "resource": "issueAttachment",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove issue attachment"
  },
  {
    "resource": "issueComment",
    "operation": "add",
    "name": "Add",
    "description": "Add issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "get",
    "name": "Get",
    "description": "Get issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issue comments"
  },
  {
    "resource": "issueComment",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "update",
    "name": "Update",
    "description": "Update issue comment"
  },
  {
    "resource": "project",
    "operation": "get",
    "name": "Get",
    "description": "Get project"
  },
  {
    "resource": "project",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all projects"
  },
  {
    "resource": "user",
    "operation": "create",
    "name": "Create",
    "description": "Create user"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all users"
  },
  {
    "resource": "user",
    "operation": "update",
    "name": "Update",
    "description": "Update user"
  },
  {
    "resource": "user",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete user"
  }
]')
WHERE node_type = 'nodes-base.jira';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "update",
    "name": "Update",
    "description": "Update an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issues"
  },
  {
    "resource": "issue",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an issue"
  },
  {
    "resource": "issue",
    "operation": "changelog",
    "name": "Get Issue Changelog",
    "description": "Get issue changelog"
  },
  {
    "resource": "issue",
    "operation": "comment",
    "name": "Add Comment",
    "description": "Add comment to issue"
  },
  {
    "resource": "issue",
    "operation": "attach",
    "name": "Add Attachment",
    "description": "Add attachment to issue"
  },
  {
    "resource": "issue",
    "operation": "notify",
    "name": "Send Notification",
    "description": "Send notification for issue"
  },
  {
    "resource": "issue",
    "operation": "transition",
    "name": "Transition Issue",
    "description": "Transition issue to different status"
  },
  {
    "resource": "issueAttachment",
    "operation": "get",
    "name": "Get",
    "description": "Get issue attachment"
  },
  {
    "resource": "issueAttachment",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issue attachments"
  },
  {
    "resource": "issueAttachment",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove issue attachment"
  },
  {
    "resource": "issueComment",
    "operation": "add",
    "name": "Add",
    "description": "Add issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "get",
    "name": "Get",
    "description": "Get issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all issue comments"
  },
  {
    "resource": "issueComment",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove issue comment"
  },
  {
    "resource": "issueComment",
    "operation": "update",
    "name": "Update",
    "description": "Update issue comment"
  },
  {
    "resource": "project",
    "operation": "get",
    "name": "Get",
    "description": "Get project"
  },
  {
    "resource": "project",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all projects"
  },
  {
    "resource": "user",
    "operation": "create",
    "name": "Create",
    "description": "Create user"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get All",
    "description": "Get all users"
  },
  {
    "resource": "user",
    "operation": "update",
    "name": "Update",
    "description": "Update user"
  },
  {
    "resource": "user",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete user"
  }
]')
WHERE node_type = 'nodes-base.jiraTool';

-- Patch redis (9 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "info",
    "operation": "get",
    "name": "Get",
    "description": "Get the value of a key from the database"
  },
  {
    "resource": "info",
    "operation": "set",
    "name": "Set",
    "description": "Set a key in the database"
  },
  {
    "resource": "info",
    "operation": "del",
    "name": "Delete",
    "description": "Delete a key from the database"
  },
  {
    "resource": "info",
    "operation": "push",
    "name": "Push",
    "description": "Push an element to a list"
  },
  {
    "resource": "info",
    "operation": "pop",
    "name": "Pop",
    "description": "Pop an element from a list"
  },
  {
    "resource": "info",
    "operation": "incr",
    "name": "Increment",
    "description": "Increment the value of a key"
  },
  {
    "resource": "info",
    "operation": "keys",
    "name": "Keys",
    "description": "Returns all keys matching pattern"
  },
  {
    "resource": "info",
    "operation": "publish",
    "name": "Publish",
    "description": "Publish message to channel"
  },
  {
    "resource": "info",
    "operation": "setExpire",
    "name": "Set Expire",
    "description": "Set a timeout on a key"
  }
]')
WHERE node_type = 'nodes-base.redis';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "info",
    "operation": "get",
    "name": "Get",
    "description": "Get the value of a key from the database"
  },
  {
    "resource": "info",
    "operation": "set",
    "name": "Set",
    "description": "Set a key in the database"
  },
  {
    "resource": "info",
    "operation": "del",
    "name": "Delete",
    "description": "Delete a key from the database"
  },
  {
    "resource": "info",
    "operation": "push",
    "name": "Push",
    "description": "Push an element to a list"
  },
  {
    "resource": "info",
    "operation": "pop",
    "name": "Pop",
    "description": "Pop an element from a list"
  },
  {
    "resource": "info",
    "operation": "incr",
    "name": "Increment",
    "description": "Increment the value of a key"
  },
  {
    "resource": "info",
    "operation": "keys",
    "name": "Keys",
    "description": "Returns all keys matching pattern"
  },
  {
    "resource": "info",
    "operation": "publish",
    "name": "Publish",
    "description": "Publish message to channel"
  },
  {
    "resource": "info",
    "operation": "setExpire",
    "name": "Set Expire",
    "description": "Set a timeout on a key"
  }
]')
WHERE node_type = 'nodes-base.redisTool';

-- Patch zendesk (19 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "organization",
    "operation": "create",
    "name": "Create",
    "description": "Create an organization"
  },
  {
    "resource": "organization",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an organization"
  },
  {
    "resource": "organization",
    "operation": "get",
    "name": "Get",
    "description": "Get an organization"
  },
  {
    "resource": "organization",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many organizations"
  },
  {
    "resource": "organization",
    "operation": "update",
    "name": "Update",
    "description": "Update an organization"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  },
  {
    "resource": "ticketField",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket field"
  },
  {
    "resource": "ticketField",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many ticket fields"
  },
  {
    "resource": "user",
    "operation": "create",
    "name": "Create",
    "description": "Create a user"
  },
  {
    "resource": "user",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a user"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many users"
  },
  {
    "resource": "user",
    "operation": "getOrganizations",
    "name": "Get Organizations",
    "description": "Get organizations for a user"
  },
  {
    "resource": "user",
    "operation": "getRelatedData",
    "name": "Get Related Data",
    "description": "Get related data for a user"
  },
  {
    "resource": "user",
    "operation": "update",
    "name": "Update",
    "description": "Update a user"
  }
]')
WHERE node_type = 'nodes-base.zendesk';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "organization",
    "operation": "create",
    "name": "Create",
    "description": "Create an organization"
  },
  {
    "resource": "organization",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an organization"
  },
  {
    "resource": "organization",
    "operation": "get",
    "name": "Get",
    "description": "Get an organization"
  },
  {
    "resource": "organization",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many organizations"
  },
  {
    "resource": "organization",
    "operation": "update",
    "name": "Update",
    "description": "Update an organization"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  },
  {
    "resource": "ticketField",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket field"
  },
  {
    "resource": "ticketField",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many ticket fields"
  },
  {
    "resource": "user",
    "operation": "create",
    "name": "Create",
    "description": "Create a user"
  },
  {
    "resource": "user",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a user"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many users"
  },
  {
    "resource": "user",
    "operation": "getOrganizations",
    "name": "Get Organizations",
    "description": "Get organizations for a user"
  },
  {
    "resource": "user",
    "operation": "getRelatedData",
    "name": "Get Related Data",
    "description": "Get related data for a user"
  },
  {
    "resource": "user",
    "operation": "update",
    "name": "Update",
    "description": "Update a user"
  }
]')
WHERE node_type = 'nodes-base.zendeskTool';

-- Patch hubspot (32 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "company",
    "operation": "create",
    "name": "Create",
    "description": "Create a company"
  },
  {
    "resource": "company",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a company"
  },
  {
    "resource": "company",
    "operation": "get",
    "name": "Get",
    "description": "Get a company"
  },
  {
    "resource": "company",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many companies"
  },
  {
    "resource": "company",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated companies"
  },
  {
    "resource": "company",
    "operation": "searchByDomain",
    "name": "Search by Domain",
    "description": "Search companies by domain"
  },
  {
    "resource": "company",
    "operation": "update",
    "name": "Update",
    "description": "Update a company"
  },
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated contacts"
  },
  {
    "resource": "contact",
    "operation": "search",
    "name": "Search",
    "description": "Search contacts"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "deal",
    "operation": "create",
    "name": "Create",
    "description": "Create a deal"
  },
  {
    "resource": "deal",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a deal"
  },
  {
    "resource": "deal",
    "operation": "get",
    "name": "Get",
    "description": "Get a deal"
  },
  {
    "resource": "deal",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many deals"
  },
  {
    "resource": "deal",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated deals"
  },
  {
    "resource": "deal",
    "operation": "search",
    "name": "Search",
    "description": "Search deals"
  },
  {
    "resource": "deal",
    "operation": "update",
    "name": "Update",
    "description": "Update a deal"
  },
  {
    "resource": "engagementEmail",
    "operation": "create",
    "name": "Create",
    "description": "Create an engagement email"
  },
  {
    "resource": "engagementEmail",
    "operation": "get",
    "name": "Get",
    "description": "Get an engagement email"
  },
  {
    "resource": "engagementEmail",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many engagement emails"
  },
  {
    "resource": "form",
    "operation": "get",
    "name": "Get",
    "description": "Get a form"
  },
  {
    "resource": "form",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many forms"
  },
  {
    "resource": "form",
    "operation": "getSubmittedData",
    "name": "Get Submitted Data",
    "description": "Get submitted form data"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  }
]')
WHERE node_type = 'nodes-base.hubspot';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "company",
    "operation": "create",
    "name": "Create",
    "description": "Create a company"
  },
  {
    "resource": "company",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a company"
  },
  {
    "resource": "company",
    "operation": "get",
    "name": "Get",
    "description": "Get a company"
  },
  {
    "resource": "company",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many companies"
  },
  {
    "resource": "company",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated companies"
  },
  {
    "resource": "company",
    "operation": "searchByDomain",
    "name": "Search by Domain",
    "description": "Search companies by domain"
  },
  {
    "resource": "company",
    "operation": "update",
    "name": "Update",
    "description": "Update a company"
  },
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated contacts"
  },
  {
    "resource": "contact",
    "operation": "search",
    "name": "Search",
    "description": "Search contacts"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "deal",
    "operation": "create",
    "name": "Create",
    "description": "Create a deal"
  },
  {
    "resource": "deal",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a deal"
  },
  {
    "resource": "deal",
    "operation": "get",
    "name": "Get",
    "description": "Get a deal"
  },
  {
    "resource": "deal",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many deals"
  },
  {
    "resource": "deal",
    "operation": "getRecentlyCreatedUpdated",
    "name": "Get Recently Created/Updated",
    "description": "Get recently created or updated deals"
  },
  {
    "resource": "deal",
    "operation": "search",
    "name": "Search",
    "description": "Search deals"
  },
  {
    "resource": "deal",
    "operation": "update",
    "name": "Update",
    "description": "Update a deal"
  },
  {
    "resource": "engagementEmail",
    "operation": "create",
    "name": "Create",
    "description": "Create an engagement email"
  },
  {
    "resource": "engagementEmail",
    "operation": "get",
    "name": "Get",
    "description": "Get an engagement email"
  },
  {
    "resource": "engagementEmail",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many engagement emails"
  },
  {
    "resource": "form",
    "operation": "get",
    "name": "Get",
    "description": "Get a form"
  },
  {
    "resource": "form",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many forms"
  },
  {
    "resource": "form",
    "operation": "getSubmittedData",
    "name": "Get Submitted Data",
    "description": "Get submitted form data"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  }
]')
WHERE node_type = 'nodes-base.hubspotTool';

-- Patch freshdesk (10 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  }
]')
WHERE node_type = 'nodes-base.freshdesk';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "contact",
    "operation": "create",
    "name": "Create",
    "description": "Create a contact"
  },
  {
    "resource": "contact",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a contact"
  },
  {
    "resource": "contact",
    "operation": "get",
    "name": "Get",
    "description": "Get a contact"
  },
  {
    "resource": "contact",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many contacts"
  },
  {
    "resource": "contact",
    "operation": "update",
    "name": "Update",
    "description": "Update a contact"
  },
  {
    "resource": "ticket",
    "operation": "create",
    "name": "Create",
    "description": "Create a ticket"
  },
  {
    "resource": "ticket",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a ticket"
  },
  {
    "resource": "ticket",
    "operation": "get",
    "name": "Get",
    "description": "Get a ticket"
  },
  {
    "resource": "ticket",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many tickets"
  },
  {
    "resource": "ticket",
    "operation": "update",
    "name": "Update",
    "description": "Update a ticket"
  }
]')
WHERE node_type = 'nodes-base.freshdeskTool';

-- Patch discord (14 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "message",
    "operation": "send",
    "name": "Send",
    "description": "Send a message"
  },
  {
    "resource": "message",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit a message"
  },
  {
    "resource": "message",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a message"
  },
  {
    "resource": "message",
    "operation": "get",
    "name": "Get",
    "description": "Get a message"
  },
  {
    "resource": "message",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many messages"
  },
  {
    "resource": "member",
    "operation": "add",
    "name": "Add",
    "description": "Add a member to a server"
  },
  {
    "resource": "member",
    "operation": "ban",
    "name": "Ban",
    "description": "Ban a member from a server"
  },
  {
    "resource": "member",
    "operation": "get",
    "name": "Get",
    "description": "Get a member"
  },
  {
    "resource": "member",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many members"
  },
  {
    "resource": "member",
    "operation": "kick",
    "name": "Kick",
    "description": "Kick a member from a server"
  },
  {
    "resource": "member",
    "operation": "modify",
    "name": "Modify",
    "description": "Modify a member"
  },
  {
    "resource": "member",
    "operation": "roleAdd",
    "name": "Add Role",
    "description": "Add a role to a member"
  },
  {
    "resource": "member",
    "operation": "roleRemove",
    "name": "Remove Role",
    "description": "Remove a role from a member"
  },
  {
    "resource": "member",
    "operation": "unban",
    "name": "Unban",
    "description": "Unban a member from a server"
  }
]')
WHERE node_type = 'nodes-base.discord';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "message",
    "operation": "send",
    "name": "Send",
    "description": "Send a message"
  },
  {
    "resource": "message",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit a message"
  },
  {
    "resource": "message",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a message"
  },
  {
    "resource": "message",
    "operation": "get",
    "name": "Get",
    "description": "Get a message"
  },
  {
    "resource": "message",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many messages"
  },
  {
    "resource": "member",
    "operation": "add",
    "name": "Add",
    "description": "Add a member to a server"
  },
  {
    "resource": "member",
    "operation": "ban",
    "name": "Ban",
    "description": "Ban a member from a server"
  },
  {
    "resource": "member",
    "operation": "get",
    "name": "Get",
    "description": "Get a member"
  },
  {
    "resource": "member",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many members"
  },
  {
    "resource": "member",
    "operation": "kick",
    "name": "Kick",
    "description": "Kick a member from a server"
  },
  {
    "resource": "member",
    "operation": "modify",
    "name": "Modify",
    "description": "Modify a member"
  },
  {
    "resource": "member",
    "operation": "roleAdd",
    "name": "Add Role",
    "description": "Add a role to a member"
  },
  {
    "resource": "member",
    "operation": "roleRemove",
    "name": "Remove Role",
    "description": "Remove a role from a member"
  },
  {
    "resource": "member",
    "operation": "unban",
    "name": "Unban",
    "description": "Unban a member from a server"
  }
]')
WHERE node_type = 'nodes-base.discordTool';

-- Patch gmail (25 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "draft",
    "operation": "create",
    "name": "Create",
    "description": "Create a draft"
  },
  {
    "resource": "draft",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a draft"
  },
  {
    "resource": "draft",
    "operation": "get",
    "name": "Get",
    "description": "Get a draft"
  },
  {
    "resource": "draft",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many drafts"
  },
  {
    "resource": "draft",
    "operation": "update",
    "name": "Update",
    "description": "Update a draft"
  },
  {
    "resource": "label",
    "operation": "create",
    "name": "Create",
    "description": "Create a label"
  },
  {
    "resource": "label",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a label"
  },
  {
    "resource": "label",
    "operation": "get",
    "name": "Get",
    "description": "Get a label"
  },
  {
    "resource": "label",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many labels"
  },
  {
    "resource": "label",
    "operation": "update",
    "name": "Update",
    "description": "Update a label"
  },
  {
    "resource": "message",
    "operation": "addLabels",
    "name": "Add Labels",
    "description": "Add labels to a message"
  },
  {
    "resource": "message",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a message"
  },
  {
    "resource": "message",
    "operation": "get",
    "name": "Get",
    "description": "Get a message"
  },
  {
    "resource": "message",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many messages"
  },
  {
    "resource": "message",
    "operation": "removeLabels",
    "name": "Remove Labels",
    "description": "Remove labels from a message"
  },
  {
    "resource": "message",
    "operation": "reply",
    "name": "Reply",
    "description": "Reply to a message"
  },
  {
    "resource": "message",
    "operation": "send",
    "name": "Send",
    "description": "Send a message"
  },
  {
    "resource": "thread",
    "operation": "addLabels",
    "name": "Add Labels",
    "description": "Add labels to a thread"
  },
  {
    "resource": "thread",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a thread"
  },
  {
    "resource": "thread",
    "operation": "get",
    "name": "Get",
    "description": "Get a thread"
  },
  {
    "resource": "thread",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many threads"
  },
  {
    "resource": "thread",
    "operation": "removeLabels",
    "name": "Remove Labels",
    "description": "Remove labels from a thread"
  },
  {
    "resource": "thread",
    "operation": "reply",
    "name": "Reply",
    "description": "Reply to a thread"
  },
  {
    "resource": "thread",
    "operation": "trash",
    "name": "Trash",
    "description": "Trash a thread"
  },
  {
    "resource": "thread",
    "operation": "untrash",
    "name": "Untrash",
    "description": "Untrash a thread"
  }
]')
WHERE node_type = 'nodes-base.gmail';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "draft",
    "operation": "create",
    "name": "Create",
    "description": "Create a draft"
  },
  {
    "resource": "draft",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a draft"
  },
  {
    "resource": "draft",
    "operation": "get",
    "name": "Get",
    "description": "Get a draft"
  },
  {
    "resource": "draft",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many drafts"
  },
  {
    "resource": "draft",
    "operation": "update",
    "name": "Update",
    "description": "Update a draft"
  },
  {
    "resource": "label",
    "operation": "create",
    "name": "Create",
    "description": "Create a label"
  },
  {
    "resource": "label",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a label"
  },
  {
    "resource": "label",
    "operation": "get",
    "name": "Get",
    "description": "Get a label"
  },
  {
    "resource": "label",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many labels"
  },
  {
    "resource": "label",
    "operation": "update",
    "name": "Update",
    "description": "Update a label"
  },
  {
    "resource": "message",
    "operation": "addLabels",
    "name": "Add Labels",
    "description": "Add labels to a message"
  },
  {
    "resource": "message",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a message"
  },
  {
    "resource": "message",
    "operation": "get",
    "name": "Get",
    "description": "Get a message"
  },
  {
    "resource": "message",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many messages"
  },
  {
    "resource": "message",
    "operation": "removeLabels",
    "name": "Remove Labels",
    "description": "Remove labels from a message"
  },
  {
    "resource": "message",
    "operation": "reply",
    "name": "Reply",
    "description": "Reply to a message"
  },
  {
    "resource": "message",
    "operation": "send",
    "name": "Send",
    "description": "Send a message"
  },
  {
    "resource": "thread",
    "operation": "addLabels",
    "name": "Add Labels",
    "description": "Add labels to a thread"
  },
  {
    "resource": "thread",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a thread"
  },
  {
    "resource": "thread",
    "operation": "get",
    "name": "Get",
    "description": "Get a thread"
  },
  {
    "resource": "thread",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many threads"
  },
  {
    "resource": "thread",
    "operation": "removeLabels",
    "name": "Remove Labels",
    "description": "Remove labels from a thread"
  },
  {
    "resource": "thread",
    "operation": "reply",
    "name": "Reply",
    "description": "Reply to a thread"
  },
  {
    "resource": "thread",
    "operation": "trash",
    "name": "Trash",
    "description": "Trash a thread"
  },
  {
    "resource": "thread",
    "operation": "untrash",
    "name": "Untrash",
    "description": "Untrash a thread"
  }
]')
WHERE node_type = 'nodes-base.gmailTool';

-- Patch trello (45 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "board",
    "operation": "create",
    "name": "Create",
    "description": "Create a new board"
  },
  {
    "resource": "board",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a board"
  },
  {
    "resource": "board",
    "operation": "get",
    "name": "Get",
    "description": "Get a board"
  },
  {
    "resource": "board",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many boards"
  },
  {
    "resource": "board",
    "operation": "update",
    "name": "Update",
    "description": "Update a board"
  },
  {
    "resource": "card",
    "operation": "create",
    "name": "Create",
    "description": "Create a new card"
  },
  {
    "resource": "card",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a card"
  },
  {
    "resource": "card",
    "operation": "get",
    "name": "Get",
    "description": "Get a card"
  },
  {
    "resource": "card",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many cards"
  },
  {
    "resource": "card",
    "operation": "update",
    "name": "Update",
    "description": "Update a card"
  },
  {
    "resource": "cardComment",
    "operation": "create",
    "name": "Create",
    "description": "Create a comment on a card"
  },
  {
    "resource": "cardComment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a comment from a card"
  },
  {
    "resource": "cardComment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many card comments"
  },
  {
    "resource": "cardComment",
    "operation": "update",
    "name": "Update",
    "description": "Update a comment on a card"
  },
  {
    "resource": "checklist",
    "operation": "create",
    "name": "Create",
    "description": "Create a checklist"
  },
  {
    "resource": "checklist",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a checklist"
  },
  {
    "resource": "checklist",
    "operation": "get",
    "name": "Get",
    "description": "Get a checklist"
  },
  {
    "resource": "checklist",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many checklists"
  },
  {
    "resource": "checklist",
    "operation": "getCheckItem",
    "name": "Get Check Item",
    "description": "Get a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "completeCheckItem",
    "name": "Complete Check Item",
    "description": "Complete a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "createCheckItem",
    "name": "Create Check Item",
    "description": "Create a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "deleteCheckItem",
    "name": "Delete Check Item",
    "description": "Delete a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "updateCheckItem",
    "name": "Update Check Item",
    "description": "Update a checklist''s check item"
  },
  {
    "resource": "list",
    "operation": "archive",
    "name": "Archive",
    "description": "Archive a list"
  },
  {
    "resource": "list",
    "operation": "create",
    "name": "Create",
    "description": "Create a new list"
  },
  {
    "resource": "list",
    "operation": "get",
    "name": "Get",
    "description": "Get a list"
  },
  {
    "resource": "list",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many lists"
  },
  {
    "resource": "list",
    "operation": "getCards",
    "name": "Get Cards",
    "description": "Get cards in a list"
  },
  {
    "resource": "list",
    "operation": "update",
    "name": "Update",
    "description": "Update a list"
  },
  {
    "resource": "attachment",
    "operation": "create",
    "name": "Create",
    "description": "Create a new attachment"
  },
  {
    "resource": "attachment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an attachment"
  },
  {
    "resource": "attachment",
    "operation": "get",
    "name": "Get",
    "description": "Get an attachment"
  },
  {
    "resource": "attachment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many attachments"
  },
  {
    "resource": "label",
    "operation": "addToCard",
    "name": "Add to Card",
    "description": "Add a label to a card"
  },
  {
    "resource": "label",
    "operation": "create",
    "name": "Create",
    "description": "Create a new label"
  },
  {
    "resource": "label",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a label"
  },
  {
    "resource": "label",
    "operation": "get",
    "name": "Get",
    "description": "Get a label"
  },
  {
    "resource": "label",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many labels"
  },
  {
    "resource": "label",
    "operation": "removeFromCard",
    "name": "Remove from Card",
    "description": "Remove a label from a card"
  },
  {
    "resource": "label",
    "operation": "update",
    "name": "Update",
    "description": "Update a label"
  },
  {
    "resource": "member",
    "operation": "add",
    "name": "Add",
    "description": "Add a member to a board"
  },
  {
    "resource": "member",
    "operation": "get",
    "name": "Get",
    "description": "Get a member"
  },
  {
    "resource": "member",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many members"
  },
  {
    "resource": "member",
    "operation": "invite",
    "name": "Invite",
    "description": "Invite a member to a board"
  },
  {
    "resource": "member",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove a member from a board"
  }
]')
WHERE node_type = 'nodes-base.trello';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "board",
    "operation": "create",
    "name": "Create",
    "description": "Create a new board"
  },
  {
    "resource": "board",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a board"
  },
  {
    "resource": "board",
    "operation": "get",
    "name": "Get",
    "description": "Get a board"
  },
  {
    "resource": "board",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many boards"
  },
  {
    "resource": "board",
    "operation": "update",
    "name": "Update",
    "description": "Update a board"
  },
  {
    "resource": "card",
    "operation": "create",
    "name": "Create",
    "description": "Create a new card"
  },
  {
    "resource": "card",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a card"
  },
  {
    "resource": "card",
    "operation": "get",
    "name": "Get",
    "description": "Get a card"
  },
  {
    "resource": "card",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many cards"
  },
  {
    "resource": "card",
    "operation": "update",
    "name": "Update",
    "description": "Update a card"
  },
  {
    "resource": "cardComment",
    "operation": "create",
    "name": "Create",
    "description": "Create a comment on a card"
  },
  {
    "resource": "cardComment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a comment from a card"
  },
  {
    "resource": "cardComment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many card comments"
  },
  {
    "resource": "cardComment",
    "operation": "update",
    "name": "Update",
    "description": "Update a comment on a card"
  },
  {
    "resource": "checklist",
    "operation": "create",
    "name": "Create",
    "description": "Create a checklist"
  },
  {
    "resource": "checklist",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a checklist"
  },
  {
    "resource": "checklist",
    "operation": "get",
    "name": "Get",
    "description": "Get a checklist"
  },
  {
    "resource": "checklist",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many checklists"
  },
  {
    "resource": "checklist",
    "operation": "getCheckItem",
    "name": "Get Check Item",
    "description": "Get a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "completeCheckItem",
    "name": "Complete Check Item",
    "description": "Complete a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "createCheckItem",
    "name": "Create Check Item",
    "description": "Create a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "deleteCheckItem",
    "name": "Delete Check Item",
    "description": "Delete a checklist''s check item"
  },
  {
    "resource": "checklist",
    "operation": "updateCheckItem",
    "name": "Update Check Item",
    "description": "Update a checklist''s check item"
  },
  {
    "resource": "list",
    "operation": "archive",
    "name": "Archive",
    "description": "Archive a list"
  },
  {
    "resource": "list",
    "operation": "create",
    "name": "Create",
    "description": "Create a new list"
  },
  {
    "resource": "list",
    "operation": "get",
    "name": "Get",
    "description": "Get a list"
  },
  {
    "resource": "list",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many lists"
  },
  {
    "resource": "list",
    "operation": "getCards",
    "name": "Get Cards",
    "description": "Get cards in a list"
  },
  {
    "resource": "list",
    "operation": "update",
    "name": "Update",
    "description": "Update a list"
  },
  {
    "resource": "attachment",
    "operation": "create",
    "name": "Create",
    "description": "Create a new attachment"
  },
  {
    "resource": "attachment",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an attachment"
  },
  {
    "resource": "attachment",
    "operation": "get",
    "name": "Get",
    "description": "Get an attachment"
  },
  {
    "resource": "attachment",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many attachments"
  },
  {
    "resource": "label",
    "operation": "addToCard",
    "name": "Add to Card",
    "description": "Add a label to a card"
  },
  {
    "resource": "label",
    "operation": "create",
    "name": "Create",
    "description": "Create a new label"
  },
  {
    "resource": "label",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a label"
  },
  {
    "resource": "label",
    "operation": "get",
    "name": "Get",
    "description": "Get a label"
  },
  {
    "resource": "label",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many labels"
  },
  {
    "resource": "label",
    "operation": "removeFromCard",
    "name": "Remove from Card",
    "description": "Remove a label from a card"
  },
  {
    "resource": "label",
    "operation": "update",
    "name": "Update",
    "description": "Update a label"
  },
  {
    "resource": "member",
    "operation": "add",
    "name": "Add",
    "description": "Add a member to a board"
  },
  {
    "resource": "member",
    "operation": "get",
    "name": "Get",
    "description": "Get a member"
  },
  {
    "resource": "member",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many members"
  },
  {
    "resource": "member",
    "operation": "invite",
    "name": "Invite",
    "description": "Invite a member to a board"
  },
  {
    "resource": "member",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove a member from a board"
  }
]')
WHERE node_type = 'nodes-base.trelloTool';

-- Patch notion (15 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "block",
    "operation": "append",
    "name": "Append After",
    "description": "Append a block"
  },
  {
    "resource": "block",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many blocks"
  },
  {
    "resource": "database",
    "operation": "get",
    "name": "Get",
    "description": "Get a database"
  },
  {
    "resource": "database",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many databases"
  },
  {
    "resource": "database",
    "operation": "search",
    "name": "Search",
    "description": "Search databases"
  },
  {
    "resource": "databasePage",
    "operation": "create",
    "name": "Create",
    "description": "Create a database page"
  },
  {
    "resource": "databasePage",
    "operation": "get",
    "name": "Get",
    "description": "Get a database page"
  },
  {
    "resource": "databasePage",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many database pages"
  },
  {
    "resource": "databasePage",
    "operation": "update",
    "name": "Update",
    "description": "Update a database page"
  },
  {
    "resource": "page",
    "operation": "archive",
    "name": "Archive",
    "description": "Archive a page"
  },
  {
    "resource": "page",
    "operation": "create",
    "name": "Create",
    "description": "Create a page"
  },
  {
    "resource": "page",
    "operation": "get",
    "name": "Get",
    "description": "Get a page"
  },
  {
    "resource": "page",
    "operation": "search",
    "name": "Search",
    "description": "Search pages"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many users"
  }
]')
WHERE node_type = 'nodes-base.notion';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "block",
    "operation": "append",
    "name": "Append After",
    "description": "Append a block"
  },
  {
    "resource": "block",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many blocks"
  },
  {
    "resource": "database",
    "operation": "get",
    "name": "Get",
    "description": "Get a database"
  },
  {
    "resource": "database",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many databases"
  },
  {
    "resource": "database",
    "operation": "search",
    "name": "Search",
    "description": "Search databases"
  },
  {
    "resource": "databasePage",
    "operation": "create",
    "name": "Create",
    "description": "Create a database page"
  },
  {
    "resource": "databasePage",
    "operation": "get",
    "name": "Get",
    "description": "Get a database page"
  },
  {
    "resource": "databasePage",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many database pages"
  },
  {
    "resource": "databasePage",
    "operation": "update",
    "name": "Update",
    "description": "Update a database page"
  },
  {
    "resource": "page",
    "operation": "archive",
    "name": "Archive",
    "description": "Archive a page"
  },
  {
    "resource": "page",
    "operation": "create",
    "name": "Create",
    "description": "Create a page"
  },
  {
    "resource": "page",
    "operation": "get",
    "name": "Get",
    "description": "Get a page"
  },
  {
    "resource": "page",
    "operation": "search",
    "name": "Search",
    "description": "Search pages"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many users"
  }
]')
WHERE node_type = 'nodes-base.notionTool';

-- Patch stripe (33 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "balance",
    "operation": "get",
    "name": "Get",
    "description": "Get the current balance"
  },
  {
    "resource": "charge",
    "operation": "create",
    "name": "Create",
    "description": "Create a charge"
  },
  {
    "resource": "charge",
    "operation": "get",
    "name": "Get",
    "description": "Get a charge"
  },
  {
    "resource": "charge",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many charges"
  },
  {
    "resource": "charge",
    "operation": "update",
    "name": "Update",
    "description": "Update a charge"
  },
  {
    "resource": "coupon",
    "operation": "create",
    "name": "Create",
    "description": "Create a coupon"
  },
  {
    "resource": "coupon",
    "operation": "get",
    "name": "Get",
    "description": "Get a coupon"
  },
  {
    "resource": "coupon",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many coupons"
  },
  {
    "resource": "coupon",
    "operation": "update",
    "name": "Update",
    "description": "Update a coupon"
  },
  {
    "resource": "customer",
    "operation": "create",
    "name": "Create",
    "description": "Create a customer"
  },
  {
    "resource": "customer",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a customer"
  },
  {
    "resource": "customer",
    "operation": "get",
    "name": "Get",
    "description": "Get a customer"
  },
  {
    "resource": "customer",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many customers"
  },
  {
    "resource": "customer",
    "operation": "update",
    "name": "Update",
    "description": "Update a customer"
  },
  {
    "resource": "customerCard",
    "operation": "add",
    "name": "Add",
    "description": "Add a customer card"
  },
  {
    "resource": "customerCard",
    "operation": "get",
    "name": "Get",
    "description": "Get a customer card"
  },
  {
    "resource": "customerCard",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove a customer card"
  },
  {
    "resource": "invoice",
    "operation": "create",
    "name": "Create",
    "description": "Create an invoice"
  },
  {
    "resource": "invoice",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an invoice"
  },
  {
    "resource": "invoice",
    "operation": "get",
    "name": "Get",
    "description": "Get an invoice"
  },
  {
    "resource": "invoice",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many invoices"
  },
  {
    "resource": "invoice",
    "operation": "pay",
    "name": "Pay",
    "description": "Pay an invoice"
  },
  {
    "resource": "invoice",
    "operation": "sendDraft",
    "name": "Send Draft",
    "description": "Send a draft invoice"
  },
  {
    "resource": "invoice",
    "operation": "update",
    "name": "Update",
    "description": "Update an invoice"
  },
  {
    "resource": "invoiceItem",
    "operation": "create",
    "name": "Create",
    "description": "Create an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "get",
    "name": "Get",
    "description": "Get an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many invoice items"
  },
  {
    "resource": "invoiceItem",
    "operation": "update",
    "name": "Update",
    "description": "Update an invoice item"
  },
  {
    "resource": "source",
    "operation": "create",
    "name": "Create",
    "description": "Create a source"
  },
  {
    "resource": "source",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a source"
  },
  {
    "resource": "source",
    "operation": "get",
    "name": "Get",
    "description": "Get a source"
  },
  {
    "resource": "token",
    "operation": "create",
    "name": "Create",
    "description": "Create a token"
  }
]')
WHERE node_type = 'nodes-base.stripe';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "balance",
    "operation": "get",
    "name": "Get",
    "description": "Get the current balance"
  },
  {
    "resource": "charge",
    "operation": "create",
    "name": "Create",
    "description": "Create a charge"
  },
  {
    "resource": "charge",
    "operation": "get",
    "name": "Get",
    "description": "Get a charge"
  },
  {
    "resource": "charge",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many charges"
  },
  {
    "resource": "charge",
    "operation": "update",
    "name": "Update",
    "description": "Update a charge"
  },
  {
    "resource": "coupon",
    "operation": "create",
    "name": "Create",
    "description": "Create a coupon"
  },
  {
    "resource": "coupon",
    "operation": "get",
    "name": "Get",
    "description": "Get a coupon"
  },
  {
    "resource": "coupon",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many coupons"
  },
  {
    "resource": "coupon",
    "operation": "update",
    "name": "Update",
    "description": "Update a coupon"
  },
  {
    "resource": "customer",
    "operation": "create",
    "name": "Create",
    "description": "Create a customer"
  },
  {
    "resource": "customer",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a customer"
  },
  {
    "resource": "customer",
    "operation": "get",
    "name": "Get",
    "description": "Get a customer"
  },
  {
    "resource": "customer",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many customers"
  },
  {
    "resource": "customer",
    "operation": "update",
    "name": "Update",
    "description": "Update a customer"
  },
  {
    "resource": "customerCard",
    "operation": "add",
    "name": "Add",
    "description": "Add a customer card"
  },
  {
    "resource": "customerCard",
    "operation": "get",
    "name": "Get",
    "description": "Get a customer card"
  },
  {
    "resource": "customerCard",
    "operation": "remove",
    "name": "Remove",
    "description": "Remove a customer card"
  },
  {
    "resource": "invoice",
    "operation": "create",
    "name": "Create",
    "description": "Create an invoice"
  },
  {
    "resource": "invoice",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an invoice"
  },
  {
    "resource": "invoice",
    "operation": "get",
    "name": "Get",
    "description": "Get an invoice"
  },
  {
    "resource": "invoice",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many invoices"
  },
  {
    "resource": "invoice",
    "operation": "pay",
    "name": "Pay",
    "description": "Pay an invoice"
  },
  {
    "resource": "invoice",
    "operation": "sendDraft",
    "name": "Send Draft",
    "description": "Send a draft invoice"
  },
  {
    "resource": "invoice",
    "operation": "update",
    "name": "Update",
    "description": "Update an invoice"
  },
  {
    "resource": "invoiceItem",
    "operation": "create",
    "name": "Create",
    "description": "Create an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "get",
    "name": "Get",
    "description": "Get an invoice item"
  },
  {
    "resource": "invoiceItem",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many invoice items"
  },
  {
    "resource": "invoiceItem",
    "operation": "update",
    "name": "Update",
    "description": "Update an invoice item"
  },
  {
    "resource": "source",
    "operation": "create",
    "name": "Create",
    "description": "Create a source"
  },
  {
    "resource": "source",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a source"
  },
  {
    "resource": "source",
    "operation": "get",
    "name": "Get",
    "description": "Get a source"
  },
  {
    "resource": "token",
    "operation": "create",
    "name": "Create",
    "description": "Create a token"
  }
]')
WHERE node_type = 'nodes-base.stripeTool';

-- Patch github (30 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "file",
    "operation": "create",
    "name": "Create",
    "description": "Create a file"
  },
  {
    "resource": "file",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit a file"
  },
  {
    "resource": "file",
    "operation": "get",
    "name": "Get",
    "description": "Get a file"
  },
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "createComment",
    "name": "Create Comment",
    "description": "Create a comment on an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many issues"
  },
  {
    "resource": "issue",
    "operation": "lock",
    "name": "Lock",
    "description": "Lock an issue"
  },
  {
    "resource": "issue",
    "operation": "update",
    "name": "Update",
    "description": "Update an issue"
  },
  {
    "resource": "organization",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get repositories of an organization"
  },
  {
    "resource": "release",
    "operation": "create",
    "name": "Create",
    "description": "Create a release"
  },
  {
    "resource": "release",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a release"
  },
  {
    "resource": "release",
    "operation": "get",
    "name": "Get",
    "description": "Get a release"
  },
  {
    "resource": "release",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many releases"
  },
  {
    "resource": "release",
    "operation": "update",
    "name": "Update",
    "description": "Update a release"
  },
  {
    "resource": "repository",
    "operation": "create",
    "name": "Create",
    "description": "Create a repository"
  },
  {
    "resource": "repository",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a repository"
  },
  {
    "resource": "repository",
    "operation": "get",
    "name": "Get",
    "description": "Get a repository"
  },
  {
    "resource": "repository",
    "operation": "getIssues",
    "name": "Get Issues",
    "description": "Get issues of a repository"
  },
  {
    "resource": "repository",
    "operation": "getLicense",
    "name": "Get License",
    "description": "Get the license of a repository"
  },
  {
    "resource": "repository",
    "operation": "getProfile",
    "name": "Get Profile",
    "description": "Get the profile of a repository"
  },
  {
    "resource": "repository",
    "operation": "listPopularPaths",
    "name": "List Popular Paths",
    "description": "List popular paths of a repository"
  },
  {
    "resource": "repository",
    "operation": "listReferrers",
    "name": "List Referrers",
    "description": "List referrers of a repository"
  },
  {
    "resource": "repository",
    "operation": "update",
    "name": "Update",
    "description": "Update a repository"
  },
  {
    "resource": "review",
    "operation": "create",
    "name": "Create",
    "description": "Create a review"
  },
  {
    "resource": "review",
    "operation": "get",
    "name": "Get",
    "description": "Get a review"
  },
  {
    "resource": "review",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many reviews"
  },
  {
    "resource": "review",
    "operation": "update",
    "name": "Update",
    "description": "Update a review"
  },
  {
    "resource": "user",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get repositories of a user"
  },
  {
    "resource": "user",
    "operation": "invite",
    "name": "Invite",
    "description": "Invite a user to an organization"
  }
]')
WHERE node_type = 'nodes-base.github';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "file",
    "operation": "create",
    "name": "Create",
    "description": "Create a file"
  },
  {
    "resource": "file",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit a file"
  },
  {
    "resource": "file",
    "operation": "get",
    "name": "Get",
    "description": "Get a file"
  },
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "createComment",
    "name": "Create Comment",
    "description": "Create a comment on an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many issues"
  },
  {
    "resource": "issue",
    "operation": "lock",
    "name": "Lock",
    "description": "Lock an issue"
  },
  {
    "resource": "issue",
    "operation": "update",
    "name": "Update",
    "description": "Update an issue"
  },
  {
    "resource": "organization",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get repositories of an organization"
  },
  {
    "resource": "release",
    "operation": "create",
    "name": "Create",
    "description": "Create a release"
  },
  {
    "resource": "release",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a release"
  },
  {
    "resource": "release",
    "operation": "get",
    "name": "Get",
    "description": "Get a release"
  },
  {
    "resource": "release",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many releases"
  },
  {
    "resource": "release",
    "operation": "update",
    "name": "Update",
    "description": "Update a release"
  },
  {
    "resource": "repository",
    "operation": "create",
    "name": "Create",
    "description": "Create a repository"
  },
  {
    "resource": "repository",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a repository"
  },
  {
    "resource": "repository",
    "operation": "get",
    "name": "Get",
    "description": "Get a repository"
  },
  {
    "resource": "repository",
    "operation": "getIssues",
    "name": "Get Issues",
    "description": "Get issues of a repository"
  },
  {
    "resource": "repository",
    "operation": "getLicense",
    "name": "Get License",
    "description": "Get the license of a repository"
  },
  {
    "resource": "repository",
    "operation": "getProfile",
    "name": "Get Profile",
    "description": "Get the profile of a repository"
  },
  {
    "resource": "repository",
    "operation": "listPopularPaths",
    "name": "List Popular Paths",
    "description": "List popular paths of a repository"
  },
  {
    "resource": "repository",
    "operation": "listReferrers",
    "name": "List Referrers",
    "description": "List referrers of a repository"
  },
  {
    "resource": "repository",
    "operation": "update",
    "name": "Update",
    "description": "Update a repository"
  },
  {
    "resource": "review",
    "operation": "create",
    "name": "Create",
    "description": "Create a review"
  },
  {
    "resource": "review",
    "operation": "get",
    "name": "Get",
    "description": "Get a review"
  },
  {
    "resource": "review",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many reviews"
  },
  {
    "resource": "review",
    "operation": "update",
    "name": "Update",
    "description": "Update a review"
  },
  {
    "resource": "user",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get repositories of a user"
  },
  {
    "resource": "user",
    "operation": "invite",
    "name": "Invite",
    "description": "Invite a user to an organization"
  }
]')
WHERE node_type = 'nodes-base.githubTool';

-- Patch gitlab (14 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "createComment",
    "name": "Create Comment",
    "description": "Create a comment on an issue"
  },
  {
    "resource": "issue",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many issues"
  },
  {
    "resource": "release",
    "operation": "create",
    "name": "Create",
    "description": "Create a release"
  },
  {
    "resource": "release",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a release"
  },
  {
    "resource": "release",
    "operation": "get",
    "name": "Get",
    "description": "Get a release"
  },
  {
    "resource": "release",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many releases"
  },
  {
    "resource": "release",
    "operation": "update",
    "name": "Update",
    "description": "Update a release"
  },
  {
    "resource": "repository",
    "operation": "get",
    "name": "Get",
    "description": "Get a repository"
  },
  {
    "resource": "repository",
    "operation": "getIssues",
    "name": "Get Issues",
    "description": "Get repository issues"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get user repositories"
  }
]')
WHERE node_type = 'nodes-base.gitlab';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "issue",
    "operation": "create",
    "name": "Create",
    "description": "Create an issue"
  },
  {
    "resource": "issue",
    "operation": "createComment",
    "name": "Create Comment",
    "description": "Create a comment on an issue"
  },
  {
    "resource": "issue",
    "operation": "edit",
    "name": "Edit",
    "description": "Edit an issue"
  },
  {
    "resource": "issue",
    "operation": "get",
    "name": "Get",
    "description": "Get an issue"
  },
  {
    "resource": "issue",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many issues"
  },
  {
    "resource": "release",
    "operation": "create",
    "name": "Create",
    "description": "Create a release"
  },
  {
    "resource": "release",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete a release"
  },
  {
    "resource": "release",
    "operation": "get",
    "name": "Get",
    "description": "Get a release"
  },
  {
    "resource": "release",
    "operation": "getAll",
    "name": "Get Many",
    "description": "Get many releases"
  },
  {
    "resource": "release",
    "operation": "update",
    "name": "Update",
    "description": "Update a release"
  },
  {
    "resource": "repository",
    "operation": "get",
    "name": "Get",
    "description": "Get a repository"
  },
  {
    "resource": "repository",
    "operation": "getIssues",
    "name": "Get Issues",
    "description": "Get repository issues"
  },
  {
    "resource": "user",
    "operation": "get",
    "name": "Get",
    "description": "Get a user"
  },
  {
    "resource": "user",
    "operation": "getRepositories",
    "name": "Get Repositories",
    "description": "Get user repositories"
  }
]')
WHERE node_type = 'nodes-base.gitlabTool';

-- Patch postgres (5 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "database",
    "operation": "executeQuery",
    "name": "Execute Query",
    "description": "Execute an SQL query"
  },
  {
    "resource": "database",
    "operation": "insert",
    "name": "Insert",
    "description": "Insert rows in database"
  },
  {
    "resource": "database",
    "operation": "update",
    "name": "Update",
    "description": "Update rows in database"
  },
  {
    "resource": "database",
    "operation": "upsert",
    "name": "Upsert",
    "description": "Upsert rows in database"
  },
  {
    "resource": "database",
    "operation": "deleteRows",
    "name": "Delete",
    "description": "Delete rows from database"
  }
]')
WHERE node_type = 'nodes-base.postgres';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "database",
    "operation": "executeQuery",
    "name": "Execute Query",
    "description": "Execute an SQL query"
  },
  {
    "resource": "database",
    "operation": "insert",
    "name": "Insert",
    "description": "Insert rows in database"
  },
  {
    "resource": "database",
    "operation": "update",
    "name": "Update",
    "description": "Update rows in database"
  },
  {
    "resource": "database",
    "operation": "upsert",
    "name": "Upsert",
    "description": "Upsert rows in database"
  },
  {
    "resource": "database",
    "operation": "deleteRows",
    "name": "Delete",
    "description": "Delete rows from database"
  }
]')
WHERE node_type = 'nodes-base.postgresTool';

-- Patch mySql (5 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "database",
    "operation": "select",
    "name": "Select",
    "description": "Execute a SELECT query"
  },
  {
    "resource": "database",
    "operation": "insert",
    "name": "Insert",
    "description": "Execute an INSERT query"
  },
  {
    "resource": "database",
    "operation": "update",
    "name": "Update",
    "description": "Execute an UPDATE query"
  },
  {
    "resource": "database",
    "operation": "delete",
    "name": "Delete",
    "description": "Execute a DELETE query"
  },
  {
    "resource": "database",
    "operation": "executeQuery",
    "name": "Execute Query",
    "description": "Execute a custom SQL query"
  }
]')
WHERE node_type = 'nodes-base.mySql';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "database",
    "operation": "select",
    "name": "Select",
    "description": "Execute a SELECT query"
  },
  {
    "resource": "database",
    "operation": "insert",
    "name": "Insert",
    "description": "Execute an INSERT query"
  },
  {
    "resource": "database",
    "operation": "update",
    "name": "Update",
    "description": "Execute an UPDATE query"
  },
  {
    "resource": "database",
    "operation": "delete",
    "name": "Delete",
    "description": "Execute a DELETE query"
  },
  {
    "resource": "database",
    "operation": "executeQuery",
    "name": "Execute Query",
    "description": "Execute a custom SQL query"
  }
]')
WHERE node_type = 'nodes-base.mySqlTool';

-- Patch mongoDb (4 operations)
UPDATE nodes
SET operations = json('[
  {
    "resource": "document",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete documents"
  },
  {
    "resource": "document",
    "operation": "find",
    "name": "Find",
    "description": "Find documents"
  },
  {
    "resource": "document",
    "operation": "insert",
    "name": "Insert",
    "description": "Insert documents"
  },
  {
    "resource": "document",
    "operation": "update",
    "name": "Update",
    "description": "Update documents"
  }
]')
WHERE node_type = 'nodes-base.mongoDb';

-- Also patch Tool variant if it exists
UPDATE nodes
SET operations = json('[
  {
    "resource": "document",
    "operation": "delete",
    "name": "Delete",
    "description": "Delete documents"
  },
  {
    "resource": "document",
    "operation": "find",
    "name": "Find",
    "description": "Find documents"
  },
  {
    "resource": "document",
    "operation": "insert",
    "name": "Insert",
    "description": "Insert documents"
  },
  {
    "resource": "document",
    "operation": "update",
    "name": "Update",
    "description": "Update documents"
  }
]')
WHERE node_type = 'nodes-base.mongoDbTool';

-- ============================================================================
-- VERIFICATION QUERIES
-- ============================================================================

-- Count operations per node
SELECT
    node_type,
    json_array_length(operations) as operation_count,
    (
        SELECT COUNT(*)
        FROM json_each(operations)
        WHERE json_extract(json_each.value, '$.resource') IS NOT NULL
    ) as operations_with_resource
FROM nodes
WHERE node_type IN (
    'nodes-base.salesforce',
    'nodes-base.googleSheets',
    'nodes-base.jira',
    'nodes-base.redis',
    'nodes-base.zendesk',
    'nodes-base.hubspot',
    'nodes-base.freshdesk',
    'nodes-base.discord',
    'nodes-base.gmail',
    'nodes-base.trello',
    'nodes-base.notion',
    'nodes-base.stripe',
    'nodes-base.github',
    'nodes-base.gitlab',
    'nodes-base.postgres',
    'nodes-base.mySql',
    'nodes-base.mongoDb'
)
ORDER BY node_type;

-- Expected: All nodes should have >0 operations and 100% resource field coverage
