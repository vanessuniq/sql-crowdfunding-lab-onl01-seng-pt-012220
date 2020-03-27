# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT project.title, pledge.amount
  FROM project
  LEFT JOIN pledge
  ON project.id = pledge.project_id
  ORDER BY project.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "Write your SQL query Here"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT project.title, SUM(pledge.amount) - project.funding_goal
  FROM project
  INNER JOIN pledge
  ON project.id = pledge.project_id
  WHERE SUM(pledge.amount >= project.funding_goal
  GROUP BY project.title"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT user.name, SUM(pledge.amount)
  FROM user 
  INNER JOIN pledge
  ON user.id = pledge.user_id
  GROUP BY user.name
  ORDER BY SUM(pledge.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT project.category, pledge.amount 
  FROM project
  INNER JOIN pledge
  ON project.id = pledge.project_id
  WHERE projecT.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT project.category, SUM(pledge.amount)
  FROM project
  INNER JOIN pledge
  ON project.id = pledge.project_id
  WHERE project.category = 'book'
  GROUP BY category;"
end
