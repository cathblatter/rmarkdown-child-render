render_child_flexdashboard_two <- function(file = "index.Rmd", center, restrict_level){
  
  rmarkdown::render(input = file, params = list(
    center = center, 
    restrict_level = restrict_level),
    envir = new.env(), 
    output_file = paste0("index-", center, "-", restrict_level, ".html"))
  
}



params_two <- tibble::tibble(center = c(100, 101, 102, 103, 104), 
                             restrict_level = rep(10, 5))


params_two %>% 
  transpose() %>% 
  walk2(., ~render_child_flexdashboard_two, file = "index.Rmd")

# render_child_flexdashboard(center = 100, 
#                            restrict_level = 10)
# 
# 
# 
# render_child_flexdashboard(center = 104, 
#                            restrict_level = 10)




render_child_flexdashboard_one<- function(file = "index.Rmd", center){
  
  rmarkdown::render(input = file, params = list(
    center = center),
    envir = new.env(), 
    output_file = paste0("index-", center, ".html"))
  
}



params_one <- tibble::tibble(center = c(100, 101, 102, 103, 104))


params_one %>% 
  transpose() %>% 
  walk(render_child_flexdashboard_one, file = "index.Rmd")

