window.BENCHMARK_DATA = {
  "lastUpdate": 1767239607049,
  "repoUrl": "https://github.com/baxterlabsai/n8n-mcp",
  "entries": {
    "n8n-mcp Benchmarks": [
      {
        "commit": {
          "author": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "committer": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "distinct": true,
          "id": "52e2b16be80d19adf660c299361932d78f4a06a4",
          "message": "ci: add weekly upstream sync workflow\n\nAutomatically syncs latest n8n nodes/templates from upstream:\n1. Sync czlonkowski/n8n-mcp → baxterlabsai/n8n-mcp\n2. Build fresh nodes.db with npm run rebuild\n3. Upload nodes.db.gz to Tech Factory Supabase Storage\n4. Trigger Render redeploy to pick up new database\n\nSchedule: Every Sunday 6am UTC\nManual trigger available via workflow_dispatch\n\nRequired secrets:\n- SUPABASE_URL\n- SUPABASE_SERVICE_KEY\n- RENDER_API_KEY\n- SERVICE_ID\n\n🤖 Generated with [Claude Code](https://claude.com/claude-code)\n\nCo-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>",
          "timestamp": "2025-12-24T15:11:22-08:00",
          "tree_id": "d8634e00ef4563f3954150a457c6a2e0a01fee35",
          "url": "https://github.com/baxterlabsai/n8n-mcp/commit/52e2b16be80d19adf660c299361932d78f4a06a4"
        },
        "date": 1766618008190,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "sample - array sorting - small",
            "value": 0.0136,
            "range": "0.3096",
            "unit": "ms",
            "extra": "73341 ops/sec"
          }
        ]
      },
      {
        "commit": {
          "author": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "committer": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "distinct": true,
          "id": "9f3ca695f1556a4b93fadf16845ebc66d9854b82",
          "message": "ci: Add weekly upstream sync and database upload workflow\n\nAutomated weekly sync that:\n1. Pulls latest from upstream czlonkowski/n8n-mcp\n2. Rebuilds SQLite database with fresh n8n nodes/templates\n3. Uploads nodes.db.gz to Tech Factory Supabase Storage\n4. Triggers Render redeploy to pick up updated database\n\nSchedule: Every Sunday 6am UTC\nManual trigger: workflow_dispatch\n\n🤖 Generated with [Claude Code](https://claude.com/claude-code)\n\nCo-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>",
          "timestamp": "2025-12-24T20:46:48-08:00",
          "tree_id": "6c52fa5284230b1c4b20404e9cb90d8a3463a19f",
          "url": "https://github.com/baxterlabsai/n8n-mcp/commit/9f3ca695f1556a4b93fadf16845ebc66d9854b82"
        },
        "date": 1766638121030,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "sample - array sorting - small",
            "value": 0.0136,
            "range": "0.3096",
            "unit": "ms",
            "extra": "73341 ops/sec"
          }
        ]
      },
      {
        "commit": {
          "author": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "committer": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "distinct": true,
          "id": "52e53c13781145dec8498db43be1536e00241686",
          "message": "fix: Add template fetching with configurable filters to GitHub Action\n\nFixes database degradation issue where automated sync created incomplete database.\n\nChanges:\n1. Added MIN_VIEWS environment variable (default: 10)\n   - Set to 0 to disable view count filter\n   - Controlled in template-repository.ts\n\n2. Added DATE_MONTHS environment variable (default: 12)\n   - Set to 0 to include all templates regardless of date\n   - Controlled in template-fetcher.ts\n\n3. Updated GitHub Action workflow:\n   - Added step to clone n8n-docs for node documentation\n   - Added npm run fetch:templates to fetch templates from n8n.io\n   - Set MIN_VIEWS=0 and DATE_MONTHS=0 to disable all filters\n   - Updated validation: >7000 templates, >700 documented nodes\n\nExpected Results:\n- Templates: ~7,600 (up from 2,737)\n- Documentation coverage: 88% (706/802 nodes)\n- File size: ~68MB uncompressed, ~27MB compressed\n- Prevents future Sunday sync degradation\n\nRoot Cause:\n- View filter removed 1,165 templates (7,656 → 6,491)\n- Date filter removed 3,754 templates (6,491 → 2,737)\n- Missing fetch:templates step meant workflow only built nodes\n- Missing n8n-docs clone resulted in partial documentation\n\n🤖 Generated with [Claude Code](https://claude.com/claude-code)\n\nCo-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>",
          "timestamp": "2025-12-31T18:10:49-08:00",
          "tree_id": "fa35ef95627b0b7f353ea869e0d05bb797a0f3ad",
          "url": "https://github.com/baxterlabsai/n8n-mcp/commit/52e53c13781145dec8498db43be1536e00241686"
        },
        "date": 1767233571436,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "sample - array sorting - small",
            "value": 0.0136,
            "range": "0.3096",
            "unit": "ms",
            "extra": "73341 ops/sec"
          }
        ]
      },
      {
        "commit": {
          "author": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "committer": {
            "email": "george@baxterlabs.ai",
            "name": "baxterlabsai",
            "username": "baxterlabsai"
          },
          "distinct": true,
          "id": "ad58e1cb96682c8198122941d6dfe7f65c3eb8c6",
          "message": "fix: Add guard condition to properly disable MIN_VIEWS filter\n\nBug: When MIN_VIEWS=0, templates with exactly 0 views were still being skipped\nbecause the condition (views <= 0) evaluated to TRUE for 0-view templates.\n\nRoot Cause:\n- Previous: if (views <= MIN_VIEWS) → skip\n- When MIN_VIEWS=0: if (0 <= 0) → TRUE → skipped 0-view templates\n- Result: 3,203 templates filtered out (7,620 fetched → 4,417 saved)\n\nFix:\n- Added guard: if (MIN_VIEWS > 0 && views <= MIN_VIEWS) → skip\n- When MIN_VIEWS=0: guard fails, NO templates skipped\n- Result: All 7,620 templates will be saved\n\nBehavior:\n- MIN_VIEWS=10: Templates with ≤10 views skipped (original behavior)\n- MIN_VIEWS=0: NO templates skipped (filter disabled)\n- MIN_VIEWS=5: Templates with ≤5 views skipped (custom threshold)\n\nEvidence:\n- DATE_MONTHS=0 worked (7,620 templates fetched)\n- MIN_VIEWS=0 failed (only 4,417 saved instead of 7,620)\n- Compiled code had env var support but logic was wrong\n\n🤖 Generated with [Claude Code](https://claude.com/claude-code)\n\nCo-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>",
          "timestamp": "2025-12-31T19:51:28-08:00",
          "tree_id": "5240b9b7e8cd0299adab0994f1eff5a2274df0c6",
          "url": "https://github.com/baxterlabsai/n8n-mcp/commit/ad58e1cb96682c8198122941d6dfe7f65c3eb8c6"
        },
        "date": 1767239606791,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "sample - array sorting - small",
            "value": 0.0136,
            "range": "0.3096",
            "unit": "ms",
            "extra": "73341 ops/sec"
          }
        ]
      }
    ]
  }
}