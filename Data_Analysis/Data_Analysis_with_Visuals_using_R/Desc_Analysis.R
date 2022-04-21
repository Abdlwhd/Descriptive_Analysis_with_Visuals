# Load library for visualization
library("ggplot2")
# The number of people who consume Alcohol daily 
ggplot(esoph, aes(x=ncontrols, y=alcgp))+
  theme_bw()+
  geom_boxplot()+
  labs(y="Alcohol consumption",
       x="Number of controls",
       title="Number of controls(no cancer) based on alcohol")
# The age groups of people who consume tobacco daily
ggplot(esoph, aes(x=ncases, fill=tobgp))+
  theme_bw()+
  facet_wrap(~agegp)+
  geom_density(alpha=0.5)+
  labs(x="Number of of cases",
       title="Tobacco consumption based on age groups")

# The age groups of people who consume alcohol daily
ggplot(esoph, aes(x=agegp, fill=alcgp))+
  theme_bw()+
  geom_bar()+
  labs(x="Age group",
       y="Alchohol count",
       title="Alchohol consumption based on Age")