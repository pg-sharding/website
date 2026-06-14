# SPQR Website

Static website for [SPQR](https://pg-sharding.tech) - Stateless Postgres Query Router.

🌐 Hosted by GitHub Pages at https://pg-sharding.github.io/website/.

## Local Development

Run a local static server from the repository root:

```sh
python3 -m http.server 8767
```

Then open http://localhost:8767.

## Adding Blog Posts

Blog pages are static HTML files under `blog/`.

To add a post:

1. Create a new directory like `blog/my-post-slug/`.
2. Add `blog/my-post-slug/index.html` using the existing article page as a template.
3. Add a card for the post to `blog/index.html`.
4. Keep draft Markdown files in the repository root or a future `drafts/` directory until they are converted.

## License

This website is part of the SPQR project, licensed under the PostgreSQL Global Development Group License.
