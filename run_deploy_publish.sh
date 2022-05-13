
DEPLOY_DIR="/Users/chadyang/Documents/Personal/career/repos/chadHGY.github.io"
DEPLOY_BRANCH="master"
COMMIT_INFO="$(git log -1 --pretty=%B) [auto deploy]"

echo "Deploying..."
echo "Deploy directory: $DEPLOY_DIR"
echo "Deploy branch: $DEPLOY_BRANCH"
echo "Commit info: $COMMIT_INFO"

# init
bundle config set --local path ~/.bundle

# build
bundle exec jekyll build --destination $DEPLOY_DIR

# commit & push
cd $DEPLOY_DIR
git add -fA
git commit --allow-empty -m "$COMMIT_INFO"
git push -f -q origin $DEPLOY_BRANCH

# return
echo "Deployed successfully!"
cd -
exit 0
