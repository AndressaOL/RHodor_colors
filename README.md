# RHodor Palettes 

**Hodor**, named initially Wylis, was a servant of House Stark at Winterfell, loyal to Bran Stark. Hodor was one of the most underestimated characters in **Game of Thrones** and provided one of the most memorable episodes of the series **("The Door")**, arguably better than the series finale!! <br />

**Requirements:**  <br />
*install from CRAN** <br />

```
install.packages("devtools")
install.packages("scales")
```

# Download the R code source

**Install the code source in your local machine** <br />

```
git clone https://github.com/AndressaOL/RHodor_colors.git
```


**Load the R code source** <br />
*replace 'path/to' to your actual path where you downloaded the R script* <br />

```
library(devtools)
library(scales)
source("path/to/RHodor_palettes.R")

```

# Usage

```
colors <- hodor_pal("hawkins_s")(15)
colors
show_col(colors)
```
*replace for your preference palette in hodor_pal("palette name")*  <br />
*adjust the number of colors in ( )* <br />
*use show_col to verify the colors* <br />

# Palettes 

**Hawkins Lab Palette (15)** (Stranger Strings) <br />

```
hodor_pal("hawkins_s") (15)
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/hawkinscolors.png)

**GG Lab Palette (20)** (Personalized palette color ) 

```
hodor_pal("gg_lab") (20)
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/gg_labcolors.png)

**Grey Anatomy Palette (11)**  (Grey's Anatomy)  <br />

```
hodor_pal("grey_a") (11)
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/greycolors1.png) 

# Use the colors from RHodor palette
```
color_names <- names(mypallet)
color_names
 [1] "green parsley"      "green malachite"    "greenyellow pear"   "greenblue spring"  
 [5] "yellow green"       "sanguine brown"     "gamboge orange"     "orange red"        
 [9] "lightning yellow"   "lemon yellow"       "torch red"          "hot pink"          
[13] "wewak"              "magenta"            "disco"              "biloba flower"     
[17] "blue melrose"       "persian blue"       "blue mariner"       "aqua"              
[21] "blue grey1"         "blue grey2"         "blue grey3"         "red yang"          
[25] "peach lexie"        "green karev"        "green george"       "green jackson"     
[29] "charm izzie"        "pink scrubs"        "yellow mer"         "brown vecna"       
[33] "red vecna"          "rose vecna"         "red blood"          "orange upsidedown1"
[37] "orange upsidedown2" "yellow max"         "pearl lab"          "blue upsidedown1"  
[41] "blue upsidedown2"   "blue creelhouse1"   "blue creelhouse2"   "blue creelhouse3"  
[45] "lightblue eddie"    "lightblue max" 
```
* *gg_lab(1-20) ;grey_a(21-31) ;hawkins_s(32-46)* 

**To Select specific colors in the palette** <br />

1.) Using the scale palettes  <br />

```
mycols= hodor_pal("hawkins_s")(3)
show_col(mycols)
```
or <br />

2.) Using the colors by name <br />

```
selected_colors <- mypallet[c("disco", "blue upsidedown1", "yellow max")]
selected_colors
show_col(selected_colors)
```

# RHodor palettes in ggplot2


**Example 1** with `scale_fill_hodor` <br />
```
ggplot(data, aes(x=factor, y=variable, fill=factor))+
      geom_bar(stat="identity", color="black")+
      scale_fill_hodor(discrete = TRUE, palette = "hawkins_s")+
      labs(title = "SNVs", x = "Allele", y = "Density (%)") +
       theme_minimal()
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/example1.png)

**Example 2** with `scale_color_hodor` <br />

```
ggplot(data, aes(x=factor, y=variable, color=factor))+
  geom_point(size = 4, alpha = 1) +
  scale_color_hodor(discrete = TRUE, palette = "hawkins_s")+
  labs(title = "SNVs", x = "Allele", y = "Density (%)") +
  theme_minimal()
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/example1.png) 










