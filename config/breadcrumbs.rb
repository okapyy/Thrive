crumb :root do
  link "FURIMA", root_path
end

crumb :categories do
  link "カテゴリー一覧", categories_path
end

# crumb :category do |category|
#   link category[params[:id].to_i-1].name, category_path(category)
#   parent :categories
# end

crumb :category do |category|
  link category.name, category_path(category)
  if category.parent
    parent :category, category[params[:id].to_i - 1]
  else
    parent :categories
  end
end

crumb :item do |item|
  link item.name, item_path(item)
end

crumb :user do |user|
  link "マイページ", user_path(user)
end

crumb :history do |history|
  link "購入履歴", user_purchasehistory_path
  parent :user
end


# crumb :users do
#   link user.name, user_path(user)
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).