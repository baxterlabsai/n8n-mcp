window.BENCHMARK_DATA = {
  "lastUpdate": 1766618008516,
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
      }
    ]
  }
}