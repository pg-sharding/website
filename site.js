const starElements = document.querySelectorAll('[data-github-stars]');

if (starElements.length > 0) {
    fetch('https://api.github.com/repos/pg-sharding/spqr')
        .then((response) => {
            if (!response.ok) {
                throw new Error('GitHub API request failed');
            }
            return response.json();
        })
        .then((repo) => {
            const formattedStars = repo.stargazers_count.toLocaleString('en-US');

            starElements.forEach((element) => {
                element.textContent = formattedStars;
            });
        })
        .catch(() => {
            starElements.forEach((element) => {
                element.hidden = true;
            });
        });
}
