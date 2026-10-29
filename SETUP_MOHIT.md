# Setup

1. Create a GitHub repo named `mohitm1994.github.io` (empty), then push this folder to it:
   git init && git add . && git commit -m "Personal site" && git branch -M main
   git remote add origin git@github.com:mohitm1994/mohitm1994.github.io.git && git push -u origin main
2. Repo Settings > Actions > General: allow "Read and write permissions" for workflows.
3. After the first deploy action finishes, Settings > Pages: deploy from branch `gh-pages`, root.
4. Run `bin/fetch_previews.sh` once (needs internet) to copy the six MPI homepage thumbnails and your MPI photo into the repo, then commit. Until then they load straight from the MPI server.

Local preview: `docker compose up`, then open http://localhost:8080

## Still to fill in
- `assets/img/prof_pic.jpg`: current headshot (placeholder until step 4)
- `_pages/about.md`: set `announcements.enabled: true` and add files to `_news/` for news items
- GRMM: add `code = {...}` in `_bibliography/papers.bib` once the repo link is final
