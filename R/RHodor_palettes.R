## RHodor Palette

#' Based on:
#' https://cano-barbacil.wixsite.com/canobarbacil/post/create-your-own-color-palette-in-r 
#' Use the function hodor_pal 

library(scales)

##vector colors 
mypallet <- c(
  `green parsley`= "#186621",
  `green malachite`= "#22E11D",
  `greenyellow pear`= "#B4E52E",
  `greenblue spring`= "#0CF29F",
  `yellow green`= "#E4FC4F",
  `sanguine brown`= "#803131",
  `gamboge orange`= "#DC8B0C",
  `orange red`= "#F87008",
  `lightning yellow`= "#FFC110",
  `lemon yellow`= "#FCE549",
  `torch red`= "#FC2020",
  `hot pink`= "#F0288B",
  `wewak`= "#F6A0B0",
  `magenta`= "#F215EE",
  `disco`= "#6F1862", 
  `biloba flower`= "#CCA1EB",
  `blue melrose`= "#A4B8FF",
  `persian blue`= "#1B1AD6",
  `blue mariner`= "#2074C1",
  `aqua`= "#27DAD8", #hodor_gg
  `blue grey1`= "#0E3753",
  `blue grey2`= "#436898",
  `blue grey3`= "#4D94D4",
  `red yang`= "#A31825",
  `peach lexie`= "#F4E5D7",
  `green karev`= "#B0E7CC",
  `green george`= "#83BEB3",
  `green jackson`= "#0C6D0A",
  `charm izzie`= "#D26784",
  `pink scrubs`= "#FDC7DF",
  `yellow mer`= "#FCE091", #hodor_grey
  `brown vecna`= "#553632",
  `red vecna`= "#7C0A0A",
  `rose vecna`= "#D25E5E",
  `red blood`= "#E90909",
  `orange upsidedown1`= "#FC6E47",
  `orange upsidedown2`= "#F29128",
  `yellow max`= "#FCDE70",
  `pearl lab`= "#E5DDD5",
  `blue upsidedown1`= "#21466D",
  `blue upsidedown2`= "#576CB8",
  `blue creelhouse1`= "#1187F2",
  `blue creelhouse2`= "#4C53FA",
  `blue creelhouse3`= "#94B6EB",
  `lightblue eddie`= "#8BD6FD",
  `lightblue max`= "#4AE7E6", #hodor_hawkins
  `navy ellie` = "#0B165E",
  `blue jack` = "#2C2693",
  `blue collins` = "#0845F2",
  `royal cafe paris` = "#306FE5",
  `lightblue london` = "#2B92D4",
  `purple eloise` = "#B241DF",
  `fuchisa soho` = " #CA67DC",
  `violet 1960` = " #9215D0",
  `pink sandie` = "#C54C8D",
  `deeppink 8PM` = "#821654" #Last Night in Soho
  )

show_col(mypallet)

#palette function 

myvector <- function(...) {
  col1 <- c(...)
  if (is.null(col1))
    return (mypallet)
  mypallet[col1]
}

#testing colors 
myvector("disco")
myvector("blue upsidedown1")

##ist of Color Palettes 
mypal1 <- list(
`gg_lab` = myvector("green parsley","green malachite","greenyellow pear","greenblue spring","yellow green","sanguine brown","gamboge orange","orange red","lightning yellow","lemon yellow","torch red","hot pink","wewak","magenta","disco","biloba flower","blue melrose","persian blue","blue mariner","aqua"),
`grey_a` = myvector("blue grey1","blue grey2","blue grey3","red yang","peach lexie","green karev","green george","green jackson","charm izzie","pink scrubs","yellow mer"),
`hawkins_s` = myvector("brown vecna","red vecna","rose vecna","red blood","orange upsidedown1","orange upsidedown2","yellow max","pearl lab","blue upsidedown1","blue upsidedown2","blue creelhouse1","blue creelhouse2","blue creelhouse3","lightblue eddie","lightblue max"),
`soho` = myvector("navy ellie","blue jack","blue collins","royal cafe paris","lightblue london","purple eloise","fuchisa soho","violet 1960","pink sandie","deeppink 8PM")  
)

#create a function "hol_pal"
hodor_pal <- function(palette = "hawkins_s", reverse = FALSE, ...) {
  pal <- mypal1[[palette]]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}


hodor_pal("hawkins_s")

colors <- hodor_pal("hawkins_s")(15)
show_col(colors)

#scales colors
scale_color_hodor <- function(palette = "main", discrete = TRUE, 
                              reverse = FALSE, ...) {
  pal <- hodor_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", paste0("hodor_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}


scale_fill_hodor <- function(palette = "main", discrete = TRUE, 
                             reverse = FALSE, ...) {
  pal <- hodor_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("hodor_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
