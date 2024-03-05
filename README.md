# ${{\color{black}\Huge{\textsf{RHodor Palettes}}}}\$  <br />

<img src="https://github.com/AndressaOL/RHodor_colors/blob/main/figure/hodor.jpg" alt="Alt text" title="HODOR" width="150" height="150" align="right">

 $\Large{\textsf{Hodor}}$, named initially Wylis, was a servant of House Stark at Winterfell, loyal to Bran Stark. Hodor was one of the most underestimated characters in $\Large{\textsf{Game of Thrones}}$ and provided one of the most memorable episodes of the series $\Large{\textsf{"The Door"}}$, arguably better than the series finale!! <br />
<br />
<br />
<br />

##
**Requirements:**  <br />
*install from CRAN* <br />

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

**Soho Palette (10)** (Last Night in Soho)  <br /> 

```
hodor_pal("soho") (10)
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/soho.png) 


**Black mirror Palette (7)** (Nosedive)  <br /> 

```
hodor_pal("black_m") (7)
```
![image](https://github.com/AndressaOL/RHodor_colors/blob/main/figure/nosedive.png)


## Select specific colors in the palette

```
mycols= hodor_pal("hawkins_s")(3)
show_col(mycols)
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










