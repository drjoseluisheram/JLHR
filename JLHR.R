# Hugo website using official instructions from https://hugo-apero-docs.netlify.app/

# Initial settings
library(blogdown)
new_site(theme = "hugo-apero/hugo-apero", 
           format = "toml",
           sample = FALSE,
           empty_dirs = TRUE)

blogdown::check_config() #Here for changing the name of your page

# Review the site
blogdown::serve_site()


# install.packages("usethis")
usethis::browse_github()

