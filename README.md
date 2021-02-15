# Blog_Restful_Stats_App_PHP_MVC_OOP
PHP MVC OOP Blog Restful Stats App

This PHP MVC application design OOP desgin pattern that separates the application data 
and business logic (model) from the presentation (view). MVC stands for Model, View & Controller. 

generate the access token key
http://localhost:86/supermetrics/Pages/RegisterJWT


for get all posts
http://localhost:86/supermetrics/Posts/GETAll?access_token=da39a3ee5e6b4b0d3255bfef95601890afd80709

get total post access via Restful Endpoint 
http://localhost:86/supermetrics/Pages/TotalPostsCountStat

************ Errors Testing**************<br>
for no input case error
http://localhost:86/supermetrics/Posts/Search

for invalid input case error
http://localhost:86/supermetrics/Posts/Search?case=invalid_case_name

for no input access_token error
http://localhost:86/supermetrics/Posts/Search?case=avg_post_len_by_month

for invalid input access_token error
http://localhost:86/supermetrics/Posts/Search?case=avg_post_len_by_month&access_token=invalid_token_access_id


************Filter Cases **************<br>
case1:
http://localhost:86/supermetrics/Posts/Search?case=avg_post_len_by_month&access_token=da39a3ee5e6b4b0d3255bfef95601890afd80709

case2
http://localhost:86/supermetrics/Posts/Search?case=longest_post_len_by_month&access_token=da39a3ee5e6b4b0d3255bfef95601890afd80709

case 3:
http://localhost:86/supermetrics/Posts/Search?case=total_posts_per_week&access_token=da39a3ee5e6b4b0d3255bfef95601890afd80709

case 4:
http://localhost:86/supermetrics/Posts/Search?case=avg_users_posts_per_month&access_token=da39a3ee5e6b4b0d3255bfef95601890afd80709

