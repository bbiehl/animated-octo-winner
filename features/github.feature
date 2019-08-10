Feature: Test the Github API

Background:
  Given path "https://api.github.com"

Scenario: smoke test examples
  When a user requests "/"
  Then they are returned "current_user_url" => "https://api.github.com/user"
  Then they are returned "current_user_authorizations_html_url" => "https://github.com/settings/connections/applications{/client_id}"
  Then they are returned "authorizations_url" => "https://api.github.com/authorizations"
  Then they are returned "code_search_url" => "https://api.github.com/search/code?q={query}{&page,per_page,sort,order}"
  Then they are returned "commit_search_url" => "https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}"
