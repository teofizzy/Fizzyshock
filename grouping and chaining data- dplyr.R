#grouping and chaining with dplyr
# this was done along with Rscripts summarize1.R, summarize2.R, summarize3.R, summarize4.R,
#|chain1.R, chain2.R,chain3.R,chain4.R
require(dplyr)
require(swirl)
swirl()
Teofizzy
1
2
require((dplyr))
library(dplyr)
cran<-tbl_df(mydf)
rm(mydf)
rm("mydf")
cran
?group_by()
?group_by
by_package<-group_by(cran, package)
by_package
summarize(by_package, mean(size))
quantile(pack_sum$count, probs = 0.99)
top_counts<-filter(pack_sum, count > 679)
top_counts
View(top_counts)
top_counts_sorted<-arrange(top_counts, desc(count))
View(top_counts_sorted)
quantile(pack_sum$unique, probs = 0.99)
top_unique<-filter(pack_sum, unique > 465)
View(top_unique)
top_unique_sorted<-arrange(top_unique, desc(unique))
#| Our final metric of popularity is the number of distinct countries from which each package
#| was downloaded. We'll approach this one a little differently to introduce you to a method
#| called 'chaining' (or 'piping').
#| We'd like to accomplish the same result as the last script, but avoid saving our
#| intermediate results. This requires embedding function calls within one another.
#That's exactly what we've done in this script. The result is equivalent, but the code is
#| much less readable and some of the arguments are far away from the function to which they
#| belong. Again, just try to understand what is going on here, then submit() when you are
#| ready to see a better solution.
View(result3)
1
teofilo48ligawa@gmail.com
1
