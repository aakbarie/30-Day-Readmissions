
# color pallet

# The palette with grey:
cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
          "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

ggplot <- function(...) ggplot2::ggplot(...) + 
    scale_color_manual(values = cbp1) +
    scale_fill_manual(values = cbp1) + # note: needs to be overridden when using continuous color scales
    theme_bw()