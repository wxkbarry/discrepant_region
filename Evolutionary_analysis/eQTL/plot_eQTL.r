ggplot(d, aes(x, forcats::fct_rev(y), fill = value2, size = value1)) +
    geom_point(shape = 21, stroke = 0) +
    geom_hline(yintercept = seq(.5, 4.5, 1), size = .2) +
    scale_x_discrete(position = "top") +
    scale_radius(range = c(1, 6),breaks =30) +
    scale_fill_gradient(low = "orange", high = "blue", breaks = c(-1, 0, 1), labels = c("-1", "0", "1"), limits = c(-1, 1)) +
    theme_minimal() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#new
> ggplot(d, aes(x, forcats::fct_rev(y), fill = value2, size = value1)) +
+     geom_point(shape = 21, stroke = 0) +
+     geom_hline(yintercept = seq(.5, 4.5, 1), size = .2) +
+     scale_x_discrete(position = "top") +
+    
+     scale_size(trans = 'reverse',range = c(1e-50,6))+
+     scale_fill_gradient(low = "orange", high = "blue", breaks = c(-1, 0, 1), labels = c("-1", "0", "1"), limits = c(-1, 1)) +
+     theme_minimal() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
