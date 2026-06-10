if vim.g.loaded_github_pr_reviewer then
  return
end
vim.g.loaded_github_pr_reviewer = true

vim.api.nvim_create_user_command("PRReview", function()
  require("github-pr-reviewer").review_pr()
end, { desc = "Select and review a GitHub PR" })

vim.api.nvim_create_user_command("PRCommentOverlay", function()
  require("github-pr-reviewer").start_comment_overlay()
end, { desc = "Enable comment overlay for the PR on current branch" })

vim.api.nvim_create_user_command("PRReviewCleanup", function()
  require("github-pr-reviewer").cleanup_review_branch()
end, { desc = "Cleanup review branch and return to previous branch" })
