# 
# Plotting themes, labels, legend guides
# 

# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 3: Report Plot Themes, Legends, and Guides  ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 
# ---- 3.1 MPA Technical Report plot themes ----

plot.theme <- theme(axis.ticks=element_blank(),
                    panel.background=element_rect(fill="white",
                                                  colour="#909090"),
                    panel.border=element_rect(fill=NA,
                                              size=0.25,
                                              colour="#C0C0C0"),
                    panel.grid.major.x=element_line(colour="#C0C0C0",
                                                    size=0.25,
                                                    linetype=3),
                    panel.grid.major.y=element_blank(),
                    plot.margin=margin(t=0,r=20,b=5,l=5,unit="pt"),
                    axis.title=element_text(size=rel(0.9),
                                            angle=0,
                                            face="bold",
                                            colour="#303030"),
                    axis.text=element_text(size=rel(0.9),
                                           angle=0,
                                           colour="#303030",
                                           lineheight=0.7),
                    legend.position="top",
                    legend.justification="right",
                    legend.box.spacing=unit(0.1,"cm"))

age.gender.plot.theme <- theme(axis.ticks=element_blank(),
                               panel.background=element_rect(fill="white",
                                                             colour="#909090"),
                               panel.border=element_rect(fill=NA,
                                                         size=0.25,
                                                         colour="#C0C0C0"),
                               panel.grid.major.x=element_line(colour="#C0C0C0",
                                                               size=0.25,
                                                               linetype=3),
                               panel.grid.major.y=element_blank(),
                               axis.title=element_text(size=rel(0.8),
                                                       angle=0,
                                                       face="bold",
                                                       colour="#303030"),
                               axis.text=element_text(size=rel(0.6),
                                                      angle=0,
                                                      colour="#303030"),
                               legend.position="top",
                               legend.justification="right",
                               legend.box.spacing=unit(0.1,"cm"))


plot.theme.impact <- theme(axis.ticks=element_blank(),
                    panel.background=element_rect(fill="white",
                                                  colour="#909090"),
                    panel.border=element_rect(fill=NA,
                                              size=0.25,
                                              colour="#C0C0C0"),
                    panel.grid.major.y=element_line(colour="#C0C0C0",
                                                    size=0.25,
                                                    linetype=3),
                    panel.grid.major.x=element_blank(),
                    plot.margin=margin(t=0,r=20,b=5,l=5,unit="pt"),
                    axis.title=element_text(size=rel(0.9),
                                            angle=0,
                                            face="bold",
                                            colour="#303030"),
                    axis.text=element_text(size=rel(0.9),
                                           angle=0,
                                           colour="#303030",
                                           lineheight=0.7),
                    legend.position="top",
                    legend.justification="right",
                    legend.box.spacing=unit(0.1,"cm"))


fillcols.status <- c("NotDummy"=alpha("#2C7FB8",0.95),"Dummy"=alpha("#FFFFFF",0))
fillcols.trend <- c(alpha("#2C7FB8",0.95))

errcols.status <- c("NotDummy"=alpha("#21577C",0.95),"Dummy"=alpha("#FFFFFF",0))
errcols.trend <- c(alpha("#21577C",0.95))

multianswer.fillcols.status <- list(Gender=c("HHH.male"=alpha("#253494",0.95),
                                             "HHH.female"=alpha("#7FCDBB",0.95)),
                                    Religion=c("Percent.Rel.Christian"=alpha("#253494",0.95),
                                               "Percent.Rel.Muslim"=alpha("#7FCDBB",0.95),
                                               "Percent.Rel.Other"=alpha("#FDC086",0.95)),
                                    PrimaryOcc=c("Percent.PrimaryOcc.Farm"=alpha("#A6CEE3",0.95), # light blue 
                                                 "Percent.PrimaryOcc.HarvestForest"=alpha("#7FC97F",0.95), # light green
                                                 "Percent.PrimaryOcc.Fish"=alpha("#1F78B4",0.95), # blue                                        
                                                 "Percent.PrimaryOcc.WageLabor"=alpha("#33A02C",0.95), # green 
                                                 "Percent.PrimaryOcc.Tourism"=alpha("#E31A1C",0.95), # red 
                                                 "Percent.PrimaryOcc.Aquaculture"=alpha("#FDBF6F",0.95), # blue (X)
                                                 "Percent.PrimaryOcc.Extraction"=alpha("#FB9A99",0.95), # light red (X)
                                                 "Percent.PrimaryOcc.Other"=alpha("#FF7F00",0.95)), # orange 
                                    FreqFish=c("Prop.Fish.AlmostNever"=alpha("#E1E198",0.95),
                                               "Prop.Fish.FewTimesPer6Mo"=alpha("#7FCDBB",0.95),
                                               "Prop.Fish.FewTimesPerMo"=alpha("#2CA9B8",0.95),
                                               "Prop.Fish.FewTimesPerWk"=alpha("#2C7FB8",0.95),
                                               "Prop.Fish.MoreFewTimesWk"=alpha("#253494",0.95)),
                                    FreqSellFish=c("Prop.SellFish.AlmostNever"=alpha("#E1E198",0.95),
                                                   "Prop.SellFish.FewTimesPer6Mo"=alpha("#7FCDBB",0.95),
                                                   "Prop.SellFish.FewTimesPerMo"=alpha("#2CA9B8",0.95),
                                                   "Prop.SellFish.FewTimesPerWk"=alpha("#2C7FB8",0.95),
                                                   "Prop.SellFish.MoreFewTimesWk"=alpha("#253494",0.95)),
                                    IncFish=c("Prop.IncFish.None"=alpha("#E1E198",0.95),
                                              "Prop.IncFish.Some"=alpha("#7FCDBB",0.95),
                                              "Prop.IncFish.Half"=alpha("#2CA9B8",0.95),
                                              "Prop.IncFish.Most"=alpha("#2C7FB8",0.95),
                                              "Prop.IncFish.All"=alpha("#253494",0.95)),
                                    FishTech=c("Prop.FishTech.ByHand"=alpha("#7FC97F",0.95),
                                               "Prop.FishTech.StatNet"=alpha("#BEAED4",0.95),
                                               "Prop.FishTech.MobileNet"=alpha("#FDC086",0.95),
                                               "Prop.FishTech.StatLine"=alpha("#E1E198",0.95),
                                               "Prop.FishTech.MobileLine"=alpha("#386CB0",0.95)),
                                    ChildFS=c("Child.FS.no"=alpha("#253494",0.95),
                                              "Child.FS.yes"=alpha("#7FCDBB",0.95)),
                                    Protein=c("ProteinFish.None"=alpha("#E1E198",0.95),
                                              "ProteinFish.Some"=alpha("#7FCDBB",0.95),
                                              "ProteinFish.Half"=alpha("#2CA9B8",0.95),
                                              "ProteinFish.Most"=alpha("#2C7FB8",0.95),
                                              "ProteinFish.All"=alpha("#253494",0.95)),
                                    Member=c("Member.Yes"=alpha("#253494",0.95),
                                             "Member.No"=alpha("#7FCDBB",0.95)),
                                    PropRules=c("PropRuleHab"=alpha("#253494",0.95),
                                                "PropRuleSpp"=alpha("#7FCDBB",0.95)),
                                    Attendance=c("Prop.Member.Yes.Meeting.Yes"=alpha("#253494",0.95),
                                                 "Prop.Member.Yes.Meeting.No"=alpha("#7FCDBB",0.95)),
                                    FSCategorical=c("Percent.FoodInsecure.YesHunger"=alpha("#E1E198",0.95),
                                                    "Percent.FoodInsecure.NoHunger"=alpha("#7FCDBB",0.95),
                                                    "Percent.FoodSecure"=alpha("#253494",0.95)),
                                    Illness=c("Percent.Ill"=alpha("#253494",0.95),
                                              "Percent.Not.Ill"=alpha("#7FCDBB",0.95)),
                                    EconStatus=c("Econ.Status.Much.Worse"=alpha("#E1E198",0.95),
                                                 "Econ.Status.Slighly.Worse"=alpha("#7FCDBB",0.95),
                                                 "Econ.Status.Neutral"=alpha("#2CA9B8",0.95),
                                                 "Econ.Status.Slightly.Better"=alpha("#2C7FB8",0.95),
                                                 "Econ.Status.Much.Better"=alpha("#253494",0.95)),
                                    SocialConflict=c("Percent.GreatlyDecreased.SocConflict"=alpha("#E1E198",0.95),
                                                     "Percent.Decreased.SocConflict"=alpha("#7FCDBB",0.95),
                                                     "Percent.Same.SocConflict"=alpha("#2CA9B8",0.95),
                                                     "Percent.Increased.SocConflict"=alpha("#2C7FB8",0.95),
                                                     "Percent.GreatlyIncreased.SocConflict"=alpha("#253494",0.95)),
                                    NumThreats=c("Threat.None"=alpha("#7FC97F",0.95),
                                                 "Threat.One"=alpha("#BEAED4",0.95),
                                                 "Threat.Two"=alpha("#FDC086",0.95),
                                                 "Threat.Three"=alpha("#FB9A99",0.95),
                                                 "Threat.Four"=alpha("#E1E198",0.95),
                                                 "Threat.Minimum.Five"=alpha("#E31A1C", 0.95)),
                                    ThreatType=c("Pollution"=alpha("#A6CEE3",0.95), # light blue 
                                                 "DestructiveFishing"=alpha("#1F78B4",0.95), # blue
                                                 "IllegalFishing"=alpha("#7FC97F",0.95), # light green
                                                 "ClimateChange"=alpha("#33A02C",0.95), # green
                                                 "HabitatLoss"=alpha("#FB9A99",0.95), # light red
                                                 "NaturalProcesses"=alpha("#E31A1C",0.95), # red 
                                                 "OtherMarineUses"=alpha("#FDBF6F",0.95), # light orange
                                                 "Other"=alpha("#FF7F00",0.95)), # orange 
                                    Participate=c("ParticipateOrg"=alpha("#7FC97F",0.95),
                                                  "ParticipateEstablish"=alpha("#FFFFB3",0.95),
                                                  "ParticipateBnd"=alpha("#2C7FB8",0.95),
                                                  "ParticipateRules"=alpha("#253494",0.95)),
                                    HHHEducation=c("HHHEducNone"=alpha("#7FC97F",0.95),
                                                   "HHHEducPre"=alpha("#FFFFB3",0.95),
                                                   "HHHEducPrim"=alpha("#BEBADA",0.95),
                                                   "HHHEducMid"=alpha("#2C7FB8",0.95),
                                                   "HHHEducSec"=alpha("#253494",0.95),
                                                   "HHHEducHigher"=alpha("#FDB462", 0.95)),
                                    AdultEducation=c("AdultEducNone"=alpha("#7FC97F",0.95),
                                                     "AdultEducPre"=alpha("#FFFFB3",0.95),
                                                     "AdultEducPrim"=alpha("#BEBADA",0.95),
                                                     "AdultEducMid"=alpha("#2C7FB8",0.95),
                                                     "AdultEducSec"=alpha("#253494",0.95),
                                                     "AdultEducHigher"=alpha("#FDB462", 0.95)),
                                    Gender=c("HHH.male"=alpha("#253494",0.95),
                                             "HHH.female"=alpha("#7FCDBB",0.95)),
                                    Religion=c("Percent.Rel.Christian"=alpha("#253494",0.95),
                                               "Percent.Rel.Muslim"=alpha("#7FCDBB",0.95),
                                               "Percent.Rel.Other"=alpha("#FDC086",0.95)),
                                    PrimaryOcc=c("Percent.PrimaryOcc.Farm"=alpha("#7FC97F",0.95),
                                                 "Percent.PrimaryOcc.HarvestForest"=alpha("#BEAED4",0.95),
                                                 "Percent.PrimaryOcc.Fish"=alpha("#FDC086",0.95),
                                                 "Percent.PrimaryOcc.Tourism"=alpha("#E1E198",0.95),
                                                 "Percent.PrimaryOcc.WageLabor"=alpha("#386CB0",0.95),
                                                 "Percent.PrimaryOcc.Other"=alpha("#C23737",0.95)),
                                    FreqFish=c("Prop.Fish.AlmostNever"=alpha("#E1E198",0.95),
                                               "Prop.Fish.FewTimesPer6Mo"=alpha("#7FCDBB",0.95),
                                               "Prop.Fish.FewTimesPerMo"=alpha("#2CA9B8",0.95),
                                               "Prop.Fish.FewTimesPerWk"=alpha("#2C7FB8",0.95),
                                               "Prop.Fish.MoreFewTimesWk"=alpha("#253494",0.95)),
                                    FreqSellFish=c("Prop.SellFish.AlmostNever"=alpha("#E1E198",0.95),
                                                   "Prop.SellFish.FewTimesPer6Mo"=alpha("#7FCDBB",0.95),
                                                   "Prop.SellFish.FewTimesPerMo"=alpha("#2CA9B8",0.95),
                                                   "Prop.SellFish.FewTimesPerWk"=alpha("#2C7FB8",0.95),
                                                   "Prop.SellFish.MoreFewTimesWk"=alpha("#253494",0.95)),
                                    IncFish=c("Prop.IncFish.None"=alpha("#E1E198",0.95),
                                              "Prop.IncFish.Some"=alpha("#7FCDBB",0.95),
                                              "Prop.IncFish.Half"=alpha("#2CA9B8",0.95),
                                              "Prop.IncFish.Most"=alpha("#2C7FB8",0.95),
                                              "Prop.IncFish.All"=alpha("#253494",0.95)),
                                    FishTech=c("Prop.FishTech.ByHand"=alpha("#7FC97F",0.95),
                                               "Prop.FishTech.StatNet"=alpha("#BEAED4",0.95),
                                               "Prop.FishTech.MobileNet"=alpha("#FDC086",0.95),
                                               "Prop.FishTech.StatLine"=alpha("#E1E198",0.95),
                                               "Prop.FishTech.MobileLine"=alpha("#386CB0",0.95)),
                                    ChildFS=c("Child.FS.no"=alpha("#253494",0.95),
                                              "Child.FS.yes"=alpha("#7FCDBB",0.95)),
                                    Protein=c("ProteinFish.None"=alpha("#E1E198",0.95),
                                              "ProteinFish.Some"=alpha("#7FCDBB",0.95),
                                              "ProteinFish.Half"=alpha("#2CA9B8",0.95),
                                              "ProteinFish.Most"=alpha("#2C7FB8",0.95),
                                              "ProteinFish.All"=alpha("#253494",0.95)))





# ---- 3.2 MPA Impact Summary plot themes ----

fill.cols.MPAimpact.summ <- c("MPA"=alpha("#1B448B",0.85),"Control"=alpha("#6B6B6B",0.4))
err.cols.MPAimpact.summ <- c(alpha("#0A1D4E",0.5),alpha("#242424",0.25))

snapshot.plot.theme.MPAimpact.summ <- theme(panel.background=element_blank(),
                                            panel.grid.major.x=element_line(size=0.25,
                                                                            colour="#D0D0D0D0"),
                                            panel.grid.major.y=element_line(size=0.5,
                                                                            colour="#D0D0D0D0"),
                                            panel.grid.minor.x=element_blank(),
                                            axis.ticks=element_blank(),
                                            axis.text=element_text(size=11,
                                                                   angle=0,
                                                                   colour="#505050",
                                                                   hjust=0.5),
                                            axis.title=element_text(size=12,
                                                                    angle=0,
                                                                    face="bold",
                                                                    colour="#505050"),
                                            plot.title=element_text(colour="#505050",
                                                                    face="bold",
                                                                    size=14),
                                            panel.border=element_rect(size=0.5,
                                                                      colour="#D0D0D0",
                                                                      linetype=3,
                                                                      fill=NA))

plot.theme.MPAimpact.summ <- theme(axis.ticks=element_blank(),
                                   axis.text=element_text(vjust=0.5,
                                                          size=rel(1),
                                                          colour="#505050"),
                                   axis.title.y=element_text(face="bold",
                                                             size=rel(1),
                                                             angle=90,
                                                             colour="#505050"),
                                   axis.title.x=element_blank(),
                                   plot.title=element_blank(),
                                   panel.background=element_rect(fill="white",
                                                                 colour="#D0D0D0"),
                                   panel.grid.major.x=element_blank(),
                                   panel.grid.major.y=element_line(size=0.5,
                                                                   colour="#808080",
                                                                   linetype=3),
                                   panel.grid.minor.y=element_blank(),
                                   panel.border=element_rect(fill=NA,
                                                             colour="#D0D0D0"))

fs.st.plot.theme.MPAimpact.summ <- theme(axis.ticks.x=element_blank(),
                                         axis.ticks.y=element_line(colour="#505050"),
                                         axis.text=element_text(vjust=0.5,
                                                                size=rel(1.1),
                                                                colour="#505050"),
                                         axis.title.y=element_text(face="bold",
                                                                   size=rel(1.15),
                                                                   angle=90,
                                                                   colour="#505050"),
                                         axis.title.x=element_blank(),
                                         plot.title=element_blank(),
                                         panel.background=element_rect(fill="white",
                                                                       colour="#D0D0D0"),
                                         panel.grid.major.x=element_blank(),
                                         panel.grid.major.y=element_blank(),
                                         panel.grid.minor.y=element_blank(),
                                         panel.border=element_rect(fill=NA,
                                                                   colour="#D0D0D0"))


# ---- 3.3 MPA Technical Report plot legend guide ----


plot.guides.techreport <- guides(alpha=guide_legend(title.hjust=1,
                                                    title.theme=element_text(face="bold",
                                                                             size=rel(9),
                                                                             angle=0,
                                                                             colour="#505050",
                                                                             lineheight=0.75),
                                                    label.vjust=0.5,
                                                    label.theme=element_text(size=rel(8),
                                                                             angle=0,
                                                                             colour="#505050",
                                                                             lineheight=0.75),
                                                    direction="horizontal",
                                                    ncol=3,
                                                    title.position="left",
                                                    label.position="right",
                                                    keywidth=unit(0.75,"cm"),
                                                    keyheight=unit(0.5,"cm")),
                                 fill=guide_legend(title.hjust=1,
                                                   title.theme=element_text(face="bold",
                                                                            size=rel(9),
                                                                            angle=0,
                                                                            colour="#505050",
                                                                            lineheight=0.75),
                                                   label.vjust=0.5,
                                                   label.theme=element_text(size=rel(9),
                                                                            angle=0,
                                                                            colour="#505050",
                                                                            lineheight=0.75),
                                                   direction="horizontal",
                                                   ncol=2,
                                                   title.position="left",
                                                   label.position="right",
                                                   keywidth=unit(0.75,"cm"),
                                                   keyheight=unit(0.5,"cm"),
                                                   reverse=T),
                                 colour=guide_legend(title=element_blank(),
                                                     label.position="bottom",
                                                     label.theme=element_text(size=9,
                                                                              angle=0,
                                                                              colour="#505050"),
                                                     label.hjust=0.5,
                                                     keywidth=unit(2.5,"cm")),
                                 shape=guide_legend(title=element_blank(),
                                                    label.position="right",
                                                    label.theme=element_text(size=9,
                                                                             angle=0,
                                                                             colour="#505050"),
                                                    label.hjust=0.6))

# - Function to create common legend between multiple ggplots
g_legend<- function(a.gplot){
  tmp <- ggplot_gtable(ggplot_build(a.gplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)}

# ---- 3.4 MPA Impact Summary plot legend guide ----

plot.guides.MPAimpact.summ <- guides(size=guide_legend(title=element_blank(),
                                                       label.theme=element_text(size=9,
                                                                                angle=0,
                                                                                colour="#505050"),
                                                       label.position="bottom",
                                                       keywidth=unit(2.5,"cm"),
                                                       label.hjust=0.5,
                                                       order=2),
                                     fill=guide_legend(title.hjust=0.5,
                                                       title.theme=element_text(face="bold",
                                                                                size=10,
                                                                                angle=0,
                                                                                colour="#505050"),
                                                       label.theme=element_text(size=9,
                                                                                angle=0,
                                                                                colour="#505050"),
                                                       order=1,
                                                       ncol=2,
                                                       nrow=1,
                                                       title.position="top",
                                                       label.position="bottom",
                                                       keywidth=unit(1.2,"cm"),
                                                       label.hjust=0.5),
                                     colour=guide_legend(title=element_blank(),
                                                         label.position="bottom",
                                                         label.theme=element_text(size=9,
                                                                                  angle=0,
                                                                                  colour="#505050"),
                                                         label.hjust=0.5,
                                                         keywidth=unit(2.5,"cm"),
                                                         order=3),
                                     shape=guide_legend(title=element_blank(),
                                                        label.position="right",
                                                        label.theme=element_text(size=9,
                                                                                 angle=0,
                                                                                 colour="#505050"),
                                                        label.hjust=0.6,
                                                        order=4))

snapshot.plot.guide.MPAimpact.summ <- guides(fill=guide_legend(order=1,
                                                               keywidth=unit(1,"cm"),
                                                               label.theme=element_text(size=9,
                                                                                        angle=0,
                                                                                        colour="#505050"),
                                                               label.position="right",
                                                               label.hjust=0.5,
                                                               label.vjust=0.5,
                                                               title.theme=element_text(size=10,
                                                                                        angle=0,
                                                                                        colour="#505050",
                                                                                        face="bold",
                                                                                        lineheight=0.8),
                                                               title.hjust=0.5,
                                                               reverse=T),
                                             linetype=guide_legend(order=3,
                                                                   keywidth=unit(2.5,"cm"),
                                                                   title.theme=element_text(size=10,
                                                                                            angle=0,
                                                                                            colour="#505050",
                                                                                            lineheight=0.8,
                                                                                            face="bold"),
                                                                   title.hjust=0.5,
                                                                   label=F))


# ---- 3.5 MPA continuous variables distribution plot theme ----

dist.plot.theme <- theme(axis.ticks=element_blank(),
                         plot.title=element_text(face="bold",
                                                 colour="#303030",
                                                 hjust=0.5),
                         panel.background=element_rect(fill="white",
                                                       colour="#909090"),
                         panel.border=element_rect(fill=NA,
                                                   size=0.25,
                                                   colour="#C0C0C0"),
                         panel.grid.major.x=element_line(colour="#C0C0C0",
                                                         size=0.25),
                         panel.grid.major.y=element_line(colour="#C0C0C0",
                                                         size=0.25,
                                                         linetype=3),
                         axis.title=element_text(size=11,
                                                 angle=0,
                                                 face="bold",
                                                 colour="#303030"),
                         axis.text=element_text(size=10,
                                                angle=0,
                                                colour="#303030"))

# ---- 3.6 MPA Technical Report plot labels ----

Statusplot.labs <- list(FS=labs(y="Mean household food security",x="Settlement"),
                        MA=labs(y="Mean household assets",x="Settlement"),
                        PA=labs(y="Mean place attachment",x="Settlement"),
                        MT=labs(y="Mean household marine tenure",x="Settlement"),
                        SE=labs(y="School enrollment (% children ages 5-18 years old)",x="Settlement"),
                        Time=labs(y="Distance to market (hours)",x="Settlement"),
                        Unwell=labs(y="Mean time suffering from illness or injury in past 4 weeks (days)",
                                    x="Settlement"),
                        Gender=labs(y="Gender (% head of household)",x="Settlement"),
                        Religion=labs(y="Religion (% head of household)",x="Settlement"),
                        PrimaryOcc=labs(y="Primary occupation (% households)",x="Settlement"),
                        FreqFish=labs(y="Frequency of fishing (% households)",x="Settlement"),
                        FreqSellFish=labs(y="Frequency of selling at least some catch (% households)",
                                          x="Settlement"),
                        FishProtein=labs(y="Dietary protein from fish in past 6 months (% households)",
                                         x="Settlement"),
                        IncFish=labs(y="Income from fishing in past 6 months (% households)",
                                     x="Settlement"),
                        FishTech=labs(y="Fishing technique most often used in past 6 months (% households)",
                                      x="Settlement"),
                        ChildFS=labs(y="Child hunger (% households)",x="Settlement"),
                        Ethnicity=labs(y="Mean number of ethnicities (Settlement ethnicity frequency)",x="Settlement"),
                        AdultEduc=labs(y="Education completed (% adults 18 years and older)",x="Settlement"),
                        HHHEduc=labs(y="Education completed (% household heads)",x="Settlement"),
                        EconStatus=labs(y="Change in economic status of fishing households (% households)",x="Settlement"),
                        Conflict=labs(y="Perceive change in level of social conflict over marine resources in past 12 months (% households)",x="Settlement"),
                        NumLocalThreats=labs(y="Percent of respondents identifying threats to marine environement",x="Settlement"),
                        ThreatTypes=labs(y="Percent of local threats to marine environment identified",x="Settlement"),
                        Member=labs(y="Households who are a member of an organization",x="Settlement"),
                        Attendance=labs(y="Households who are a member of an organization and have attended a meeting",x="Settlement"),
                        Contribution=labs(y="Mean household contribution (Indonesian Rupiah)",x="Settlement"),
                        FSCategorical= labs(y="Food security by category (% households)",x="Settlement"),
                        Rules= labs(y="Percent of important species or habitats subject to specific harvest rule",x="Settlement"),
                        Ill = labs(y="Illness or Injury in the past 4 weeks (% individuals)", x="Settlement"),
                        Participation= labs(y="Percent of important user groups participating in marine resource decisions",x="Settlement"))


continuous.variables.plotlabs <- c("Mean household food security","Mean household assets",
                                   "Mean place attachment","Mean household marine tenure",
                                   "School enrollment (% children ages 5-18 years old)", "Distance to market (hours)",
                                   "Mean time suffering from illness or injury in past 4 weeks (days)")


# ---- 3.7 MPA Impact Summary "Big Five" plot labels ----

plot.fs.labs.st <- labs(y="Household Food Security\n ",title="STATUS AND TREND")
plot.ma.labs.st <- labs(y="Household Material Assets\n ",title="STATUS AND TREND")
plot.pa.labs.st <- labs(y="Household Place Attachment\n ",title="STATUS AND TREND")
plot.mt.labs.st <- labs(y="Household Marine Tenure\n ",title="STATUS AND TREND")
plot.se.labs.st <- labs(y="Enrollment Rate\n ",title="STATUS AND TREND")

plot.fs.labs.i <- labs(x="",y="Change in Household Food Security\nsince Baseline",title="")
plot.ma.labs.i <- labs(x="",y="Change in Household Material Assets\nsince Baseline",title="")
plot.pa.labs.i <- labs(x="",y="Change in Household Place Attachment\nsince Baseline",title="")
plot.mt.labs.i <- labs(x="",y="Change in Household Marine Tenure\nsince Baseline",title="")
plot.se.labs.i <- labs(x="",y="Change in Enrollment Rate\nsince Baseline",title="")

plot.ma.hh.labs.i <- labs(x="",y="Change in Household Assets\nsince Baseline",title="Household assets sub-class")
plot.ma.boatnomotor.labs.i <- labs(x="",y="Change in Motor-less Boat Assets\nsince Baseline",title="Motor-less boat assets sub-class")
plot.ma.boatmotor.labs.i <- labs(x="",y="Change in Motorized Boat Assets\nsince Baseline",title="Motorized boat assets sub-class")
plot.ma.vehicles.labs.i <- labs(x="",y="Change in Land Vehicle Assets\nsince Baseline",title="Land vehicle assets sub-class")

impact.x.labs <- c("MPA\nHouseholds","Control\nHouseholds")


