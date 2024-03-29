# 
# code:  Kofiau Impact Summary Plots - 2 and 4 year impacts
# 
# github: WWF-ConsEvidence/MPAMystery/2_Social/ImpactSummaries/BHS
# --- Duplicate all code from "2_Social" onward, to maintain file structure for sourced code
# 
# author: Kelly Claborn, clabornkelly@gmail.com
# created: November 2016
# modified: January 2018
# 
# ---- inputs ----
#  1) Source Kofiau.ImpactSumm.SigTests.R 
#     - Dependencies: BHS_MPA_Mystery.R
#                     Matching_2yr_impacts.R
#                     BHS_impact_data.R
#                     Function_summarise_bigfive_impacts.R
#                     
# 
# ---- code sections ----
#  1) Source Kofiau Impact Summary Statistical Code
#  2) Status and Trend Plots, Big Five
#  3) Impact Plots, Big Five
#  4) Standardized, "Snapshot" Plot, Big Five
# 
# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 1: Source Kofiau Impact Summary Statistical Code ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 


source('2_Social/ImpactSummaries/BHS/SignificanceTestCodes/Kofiau.ImpactSumm.SigTests.R')


# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 2: Status and Trend Plots, Big Five ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 


# ---- 2.1 Food Security ----

Kof.MPAimpact.summ.fs.st <- ggplot(data=Kof.status.trend,
                                    aes(Year,
                                        FS)) +
  geom_hline(aes(yintercept=4.02),
             show.legend=F,
             colour="black",
             size=0.5,
             alpha=0.4) +
  geom_hline(aes(yintercept=1.56),
             show.legend=F,
             colour="black",
             size=0.5,
             alpha=0.4) +
  geom_bar(aes(fill=Treatment),
           width=0.5,
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_errorbar(aes(ymin=FS-FSErr,
                    ymax=FS+FSErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  annotate("rect",xmin=2.7,xmax=3.3,ymin=0.05,ymax=0.35,alpha=0.6,fill="white",colour="#FFFFFF") +
  annotate("rect",xmin=2.6,xmax=3.3,ymin=1.61,ymax=1.91,alpha=0.6,fill="white",colour="#FFFFFF") +
  annotate("text",x=3.3,y=4.24,label="Food secure",alpha=0.4,fontface="italic",size=3) +
  annotate("text",x=3.1,y=1.76,label="Food insecure without hunger",alpha=0.4,fontface="italic",size=3) +
  annotate("text",x=3.1,y=0.2,label="Food insecure with hunger",alpha=0.4,fontface="italic",size=3) +
  scale_x_discrete(labels=c(as.character(Kof.sig.labs["FS","xaxis.st.baselabs"]),
                            as.character(Kof.sig.labs["FS","xaxis.st.2yrlabs"]),
                            as.character(Kof.sig.labs["FS","xaxis.st.4yrlabs"]))) +
  scale_y_continuous(limits=c(0,6.06),
                     expand=c(0,0)) +
  scale_fill_manual(values=fill.cols.MPAimpact.summ) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  fs.st.plot.theme.MPAimpact.summ + plot.guides.MPAimpact.summ + plot.fs.labs.st


# ---- 2.2 Material Assets ----

Kof.MPAimpact.summ.ma.st <- ggplot(data=Kof.status.trend,
                                    aes(Year,
                                        MA)) +
  geom_bar(aes(fill=Treatment),
           width=0.5,
           stat="identity",
           position="dodge",
           show.legend=F) +
  scale_x_discrete(labels=c(as.character(Kof.sig.labs["MA","xaxis.st.baselabs"]),
                            as.character(Kof.sig.labs["MA","xaxis.st.2yrlabs"]),
                            as.character(Kof.sig.labs["MA","xaxis.st.4yrlabs"]))) +
  scale_y_continuous(expand=c(0,0)) +
  geom_errorbar(aes(ymin=MA-MAErr,
                    ymax=MA+MAErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  scale_fill_manual(values=fill.cols.MPAimpact.summ) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  plot.theme.MPAimpact.summ + plot.guides.MPAimpact.summ + plot.ma.labs.st


# ---- 2.3 Place Attachment ----

Kof.MPAimpact.summ.pa.st <- ggplot(data=Kof.status.trend,
                                    aes(Year,
                                        PA)) +
  geom_bar(aes(fill=Treatment),
           width=0.5,
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_errorbar(aes(ymin=PA-PAErr,
                    ymax=PA+PAErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  scale_x_discrete(labels=c(as.character(Kof.sig.labs["PA","xaxis.st.baselabs"]),
                            as.character(Kof.sig.labs["PA","xaxis.st.2yrlabs"]),
                            as.character(Kof.sig.labs["PA","xaxis.st.4yrlabs"]))) +
  scale_y_continuous(limits=c(0,5),
                     expand=c(0,0)) +
  scale_fill_manual(values=fill.cols.MPAimpact.summ) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  plot.theme.MPAimpact.summ + plot.guides.MPAimpact.summ + plot.pa.labs.st


# ---- 2.4 Marine Tenure ----

Kof.MPAimpact.summ.mt.st <- ggplot(data=Kof.status.trend,
                                    aes(Year,
                                        MT)) +
  geom_bar(aes(fill=Treatment),
           width=0.5,
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_errorbar(aes(ymin=MT-MTErr,
                    ymax=MT+MTErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  scale_y_continuous(limits=c(0,5),
                     expand=c(0,0)) +
  scale_x_discrete(labels=c(as.character(Kof.sig.labs["MT","xaxis.st.baselabs"]),
                            as.character(Kof.sig.labs["MT","xaxis.st.2yrlabs"]),
                            as.character(Kof.sig.labs["MT","xaxis.st.4yrlabs"]))) +
  scale_fill_manual(values=fill.cols.MPAimpact.summ) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  plot.theme.MPAimpact.summ + plot.guides.MPAimpact.summ + plot.mt.labs.st


# ---- 2.5 School Enrollment ----

Kof.MPAimpact.summ.se.st <- ggplot(data=Kof.status.trend,
                                    aes(Year,
                                        SE)) +
  geom_bar(aes(fill=Treatment),
           width=0.5,
           stat="identity",
           position="dodge",
           show.legend=F) +
  scale_x_discrete(labels=c(as.character(Kof.sig.labs["SE","xaxis.st.baselabs"]),
                            as.character(Kof.sig.labs["SE","xaxis.st.2yrlabs"]),
                            as.character(Kof.sig.labs["SE","xaxis.st.4yrlabs"]))) +
  scale_y_continuous(labels=scales::percent_format(),
                     expand=c(0,0),
                     limits=c(0,1)) +
  geom_errorbar(aes(ymin=SE-SEErr,
                    ymax=SE+SEErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  scale_fill_manual(values=fill.cols.MPAimpact.summ) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  plot.theme.MPAimpact.summ + plot.guides.MPAimpact.summ + plot.se.labs.st


# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 3: Impact Plots, Big Five ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 


# ---- 3.1 Food Security ----

Kof.MPAimpact.summ.fs.i <- ggplot(data=Kof.impacts,
                                   aes(x=Year,y=FS)) +
  geom_bar(aes(fill=Treatment,width=0.5,group=Treatment),
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_hline(aes(yintercept=0,size="Baseline Score"),
             linetype="longdash",
             colour="#303030",
             show.legend=F) +
  geom_segment(aes(x=0.6,xend=0.7,y=FS[Treatment=="Control" & Year=="2 Year"],
                   yend=FS[Treatment=="Control"& Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.7,y=FS[Treatment=="MPA" & Year=="2 Year"],
                   yend=FS[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.6,y=FS[Treatment=="Control" & Year=="2 Year"],
                   yend=FS[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=FS[Treatment=="Control" & Year=="4 Year"],
                   yend=FS[Treatment=="Control"& Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=FS[Treatment=="MPA" & Year=="4 Year"],
                   yend=FS[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.6,y=FS[Treatment=="Control" & Year=="4 Year"],
                   yend=FS[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_errorbar(aes(ymin=FS-FSErr,
                    ymax=FS+FSErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  geom_point(data=Kof.impact.arrows.2yr,
             aes(x=x,y=FS,shape="2yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  geom_point(data=Kof.impact.arrows.4yr,
             aes(x=x,y=FS,shape="4yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  annotate("text",y=Kof.sig.pos["FS","TwoYr"],x=0.65,
           label=Kof.sig.labs["FS","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  annotate("text",y=Kof.sig.pos["FS","FourYr"],x=1.65,
           label=Kof.sig.labs["FS","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  scale_fill_manual(labels=c("MPA","Control"),
                    values=fill.cols.MPAimpact.summ) +
  scale_x_discrete(labels=impact.x.labs) +
  scale_size_manual(values=0.75) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  scale_shape_manual(values=c("2yr"=ifelse(Kof.impacts$FS[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="2 Year"]>
                                             Kof.impacts$FS[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="2 Year"],24,25),
                              "4yr"=ifelse(Kof.impacts$FS[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="4 Year"]>
                                             Kof.impacts$FS[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="4 Year"],24,25)),
                     labels="Direction of\nImpact (+/-)") +
  plot.theme.MPAimpact.summ + plot.fs.labs.i + plot.guides.MPAimpact.summ


# ---- 3.2 Material Assets ----

Kof.MPAimpact.summ.ma.i <- ggplot(data=Kof.impacts,
                                   aes(x=Year,y=MA)) +
  geom_bar(aes(fill=Treatment,width=0.5,group=Treatment),
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_hline(aes(yintercept=0,size="Baseline Score"),
             linetype="longdash",
             colour="#303030",
             show.legend=F) +
  geom_segment(aes(x=0.6,xend=0.7,y=MA[Treatment=="Control" & Year=="2 Year"],
                   yend=MA[Treatment=="Control"& Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.7,y=MA[Treatment=="MPA" & Year=="2 Year"],
                   yend=MA[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.6,y=MA[Treatment=="Control" & Year=="2 Year"],
                   yend=MA[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=MA[Treatment=="Control" & Year=="4 Year"],
                   yend=MA[Treatment=="Control"& Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=MA[Treatment=="MPA" & Year=="4 Year"],
                   yend=MA[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.6,y=MA[Treatment=="Control" & Year=="4 Year"],
                   yend=MA[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_errorbar(aes(ymin=MA-MAErr,
                    ymax=MA+MAErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  geom_point(data=Kof.impact.arrows.2yr,
             aes(x=x,y=MA,shape="2yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  geom_point(data=Kof.impact.arrows.4yr,
             aes(x=x,y=MA,shape="4yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  annotate("text",y=Kof.sig.pos["MA","TwoYr"],x=0.65,
           label=Kof.sig.labs["MA","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  annotate("text",y=Kof.sig.pos["MA","FourYr"],x=1.65,
           label=Kof.sig.labs["MA","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  scale_fill_manual(labels=c("MPA","Control"),
                    values=fill.cols.MPAimpact.summ) +
  scale_x_discrete(labels=impact.x.labs) +
  scale_size_manual(values=0.75) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  scale_shape_manual(values=c("2yr"=ifelse(Kof.impacts$MA[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="2 Year"]>
                                             Kof.impacts$MA[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="2 Year"],24,25),
                              "4yr"=ifelse(Kof.impacts$MA[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="4 Year"]>
                                             Kof.impacts$MA[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="4 Year"],24,25)),
                     labels="Direction of\nImpact (+/-)") +
  plot.theme.MPAimpact.summ + plot.ma.labs.i + plot.guides.MPAimpact.summ


# ---- 3.3 Place Attachment ----

Kof.MPAimpact.summ.pa.i <- ggplot(data=Kof.impacts,
                                   aes(x=Year,y=PA)) +
  geom_bar(aes(fill=Treatment,width=0.5,group=Treatment),
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_hline(aes(yintercept=0,size="Baseline Score"),
             linetype="longdash",
             colour="#303030",
             show.legend=F) +
  geom_segment(aes(x=0.6,xend=0.7,y=PA[Treatment=="Control" & Year=="2 Year"],
                   yend=PA[Treatment=="Control"& Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.7,y=PA[Treatment=="MPA" & Year=="2 Year"],
                   yend=PA[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.6,y=PA[Treatment=="Control" & Year=="2 Year"],
                   yend=PA[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=PA[Treatment=="Control" & Year=="4 Year"],
                   yend=PA[Treatment=="Control"& Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=PA[Treatment=="MPA" & Year=="4 Year"],
                   yend=PA[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.6,y=PA[Treatment=="Control" & Year=="4 Year"],
                   yend=PA[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_errorbar(aes(ymin=PA-PAErr,
                    ymax=PA+PAErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  geom_point(data=Kof.impact.arrows.2yr,
             aes(x=x,y=PA,shape="2yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  geom_point(data=Kof.impact.arrows.4yr,
             aes(x=x,y=PA,shape="4yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  annotate("text",y=Kof.sig.pos["PA","TwoYr"],x=0.65,
           label=Kof.sig.labs["PA","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  annotate("text",y=Kof.sig.pos["PA","FourYr"],x=1.65,
           label=Kof.sig.labs["PA","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  scale_fill_manual(labels=c("MPA","Control"),
                    values=fill.cols.MPAimpact.summ) +
  scale_x_discrete(labels=impact.x.labs) +
  scale_size_manual(values=0.75) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  scale_shape_manual(values=c("2yr"=ifelse(Kof.impacts$PA[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="2 Year"]>
                                             Kof.impacts$PA[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="2 Year"],24,25),
                              "4yr"=ifelse(Kof.impacts$PA[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="4 Year"]>
                                             Kof.impacts$PA[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="4 Year"],24,25)),
                     labels="Direction of\nImpact (+/-)") +
  plot.theme.MPAimpact.summ + plot.pa.labs.i + plot.guides.MPAimpact.summ

# ---- 3.4 Marine Tenure ----

Kof.MPAimpact.summ.mt.i <- ggplot(data=Kof.impacts,
                                   aes(x=Year,y=MT)) +
  geom_bar(aes(fill=Treatment,width=0.5,group=Treatment),
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_hline(aes(yintercept=0,size="Baseline Score"),
             linetype="longdash",
             colour="#303030",
             show.legend=F) +
  geom_segment(aes(x=0.6,xend=0.7,y=MT[Treatment=="Control" & Year=="2 Year"],
                   yend=MT[Treatment=="Control"& Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.7,y=MT[Treatment=="MPA" & Year=="2 Year"],
                   yend=MT[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.6,y=MT[Treatment=="Control" & Year=="2 Year"],
                   yend=MT[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=MT[Treatment=="Control" & Year=="4 Year"],
                   yend=MT[Treatment=="Control"& Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=MT[Treatment=="MPA" & Year=="4 Year"],
                   yend=MT[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.6,y=MT[Treatment=="Control" & Year=="4 Year"],
                   yend=MT[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_errorbar(aes(ymin=MT-MTErr,
                    ymax=MT+MTErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  geom_point(data=Kof.impact.arrows.2yr,
             aes(x=x,y=MT,shape="2yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  geom_point(data=Kof.impact.arrows.4yr,
             aes(x=x,y=MT,shape="4yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  annotate("text",y=Kof.sig.pos["MT","TwoYr"],x=0.65,
           label=Kof.sig.labs["MT","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  annotate("text",y=Kof.sig.pos["MT","FourYr"],x=1.65,
           label=Kof.sig.labs["MT","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  scale_fill_manual(labels=c("MPA","Control"),
                    values=fill.cols.MPAimpact.summ) +
  scale_x_discrete(labels=impact.x.labs) +
  scale_size_manual(values=0.75) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  scale_shape_manual(values=c("2yr"=ifelse(Kof.impacts$MT[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="2 Year"]>
                                             Kof.impacts$MT[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="2 Year"],24,25),
                              "4yr"=ifelse(Kof.impacts$MT[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="4 Year"]>
                                             Kof.impacts$MT[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="4 Year"],24,25)),
                     labels="Direction of\nImpact (+/-)") +
  plot.theme.MPAimpact.summ + plot.mt.labs.i + plot.guides.MPAimpact.summ

# ---- 3.5 School Enrollment ----

Kof.MPAimpact.summ.se.i <- ggplot(data=Kof.impacts,
                                   aes(x=Year,y=SE)) +
  geom_bar(aes(fill=Treatment,width=0.5,group=Treatment),
           stat="identity",
           position="dodge",
           show.legend=F) +
  geom_hline(aes(yintercept=0,size="Baseline Score"),
             linetype="longdash",
             colour="#303030",
             show.legend=F) +
  geom_segment(aes(x=0.6,xend=0.7,y=SE[Treatment=="Control" & Year=="2 Year"],
                   yend=SE[Treatment=="Control"& Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.7,y=SE[Treatment=="MPA" & Year=="2 Year"],
                   yend=SE[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=0.6,xend=0.6,y=SE[Treatment=="Control" & Year=="2 Year"],
                   yend=SE[Treatment=="MPA" & Year=="2 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=SE[Treatment=="Control" & Year=="4 Year"],
                   yend=SE[Treatment=="Control"& Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.7,y=SE[Treatment=="MPA" & Year=="4 Year"],
                   yend=SE[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_segment(aes(x=1.6,xend=1.6,y=SE[Treatment=="Control" & Year=="4 Year"],
                   yend=SE[Treatment=="MPA" & Year=="4 Year"]),
               lineend="square",
               size=1) +
  geom_errorbar(aes(ymin=SE-SEErr,
                    ymax=SE+SEErr,
                    colour=Treatment),
                width=0.055,
                size=0.65,
                position=position_dodge(width=0.5),
                show.legend=F) +
  geom_point(data=Kof.impact.arrows.2yr,
             aes(x=x,y=SE,shape="2yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  geom_point(data=Kof.impact.arrows.4yr,
             aes(x=x,y=SE,shape="4yr"),
             fill="black",
             size=2.75,
             show.legend=F) +
  annotate("text",y=Kof.sig.pos["SE","TwoYr"],x=0.65,
           label=Kof.sig.labs["SE","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  annotate("text",y=Kof.sig.pos["SE","FourYr"],x=1.65,
           label=Kof.sig.labs["SE","impact.2yrlabs"],
           colour="black",
           size=4,
           lineheight=0.4) +
  scale_fill_manual(labels=c("MPA","Control"),
                    values=fill.cols.MPAimpact.summ) +
  scale_x_discrete(labels=impact.x.labs) +
  scale_size_manual(values=0.75) +
  scale_colour_manual(values=err.cols.MPAimpact.summ) +
  scale_shape_manual(values=c("2yr"=ifelse(Kof.impacts$SE[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="2 Year"]>
                                             Kof.impacts$SE[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="2 Year"],24,25),
                              "4yr"=ifelse(Kof.impacts$SE[Kof.impacts$Treatment=="MPA" & Kof.impacts$Year=="4 Year"]>
                                             Kof.impacts$SE[Kof.impacts$Treatment=="Control" & Kof.impacts$Year=="4 Year"],24,25)),
                     labels="Direction of\nImpact (+/-)") +
  plot.theme.MPAimpact.summ + plot.se.labs.i + plot.guides.MPAimpact.summ


# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 4: Standardized, "Snapshot" Plot, Big Five ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 

# ---- 4.1 Snapshot plot, all Big Five standardized impacts on one plot ----

# - 2 year impacts
snapshot.Kof.MPAimpact.summ.2yr <- ggplot(data=Kof.2yr.std.impacts,
                                           aes(x=Domain,
                                               y=Std.impact)) +
  geom_bar(data=seascape.impact.2yr,
           aes(x=Domain,
               y=Std.impact,
               linetype=""),
           fill="#505050",
           alpha=0.4,
           stat="identity",
           position="dodge",
           width=0.25,
           colour=alpha("black",0.6),
           show.legend=F) +
  geom_bar(aes(fill=impact.direction),
           stat="identity",
           position="dodge",
           width=1,
           colour=alpha("black",0.4),
           show.legend=F) +
  geom_errorbar(aes(x=Domain,
                    ymin=Std.impact-Std.se,
                    ymax=Std.impact+Std.se,
                    colour=impact.direction),
                width=0.05,
                size=0.25,
                show.legend=F) +
  geom_hline(aes(yintercept=0),
             linetype="solid",
             size=1,
             colour="#505050",
             show.legend=F) +
  scale_x_discrete(labels=Kof.sig.labs[,"snapshot.2yrlabs"]) +
  scale_y_continuous(limits=c(-0.75,0.75),
                     breaks=c(seq(-0.5,0.5,by=0.25))) +
  scale_fill_manual(values=c(alpha("#65B65E",0.7),alpha("#1B448B",0.7)),
                    name="Direction of\nImpact",
                    labels=c("Positive","Negative")) +
  scale_colour_manual(values=c(alpha("#2B5027",0.7),alpha("#072258",0.7))) +
  scale_linetype_manual(values=1,
                        name="Bird's Head\nSeascape\nMean",
                        guide="legend") +
  labs(x="",y="\n MPA Impact",title="Two Year Impacts") +
  coord_flip() + snapshot.plot.theme.MPAimpact.summ + 
  snapshot.plot.guide.MPAimpact.summ 

# - 4 year impacts
snapshot.Kof.MPAimpact.summ.4yr <- ggplot(data=Kof.4yr.std.impacts,
                                           aes(x=Domain,
                                               y=Std.impact)) +
  geom_bar(data=seascape.impact.4yr,
           aes(x=Domain,
               y=Std.impact,
               linetype=""),
           fill="#505050",
           alpha=0.4,
           stat="identity",
           position="dodge",
           width=0.25,
           colour=alpha("black",0.6),
           show.legend=F) +
  geom_bar(aes(fill=impact.direction),
           stat="identity",
           position="dodge",
           width=1,
           colour=alpha("black",0.4),
           show.legend=F) +
  geom_errorbar(aes(x=Domain,
                    ymin=Lower.CI,
                    ymax=Upper.CI,
                    colour=impact.direction),
                width=0.05,
                size=0.25,
                show.legend=F) +
  geom_hline(aes(yintercept=0),
             linetype="solid",
             size=1,
             colour="#505050",
             show.legend=F) +
  scale_x_discrete(labels=Kof.sig.labs[,"snapshot.4yrlabs"]) +
  scale_y_continuous(limits=c(-0.75,0.75),
                     breaks=c(seq(-0.5,0.5,by=0.25))) +
  scale_fill_manual(values=c(alpha("#65B65E",0.7),alpha("#1B448B",0.7)),
                    name="Direction of\nImpact",
                    labels=c("Positive","Negative")) +
  scale_colour_manual(values=c(alpha("#2B5027",0.7),alpha("#072258",0.7))) +
  scale_linetype_manual(values=1,
                        name="Bird's Head\nSeascape\nMean",
                        guide="legend") +
  labs(x="",y="\n MPA Impact",title="Four Year Impacts") +
  coord_flip() + snapshot.plot.theme.MPAimpact.summ + 
  snapshot.plot.guide.MPAimpact.summ 


# ---- 4.2 Arrange grob ----

Kof.snapshot.legend.plot <-
  ggplot(data=Kof.4yr.std.impacts,
         aes(x=Domain,
             y=Std.impact)) +
  geom_bar(data=seascape.impact.4yr,
           aes(x=Domain,
               y=Std.impact,
               linetype=""),
           stat="identity") +
  geom_bar(aes(fill=impact.direction),
           stat="identity") +
  scale_fill_manual(values=c(alpha("#65B65E",0.7),alpha("#1B448B",0.7)),
                    name="Direction of\nImpact",
                    labels=c("Positive","Negative")) +
  scale_colour_manual(values=c(alpha("#2B5027",0.7),alpha("#072258",0.7))) +
  scale_linetype_manual(values=1,
                        name="Bird's Head\nSeascape\nMean",
                        guide="legend") +
  coord_flip() + snapshot.plot.theme.MPAimpact.summ + 
  snapshot.plot.guide.MPAimpact.summ 

Kof.snapshot.legend <- g_legend(Kof.snapshot.legend.plot)

snapshot.Kof.MPAimpact.bothyr <-
  grid.arrange(arrangeGrob(snapshot.Kof.MPAimpact.summ.2yr,
                           snapshot.Kof.MPAimpact.summ.4yr,
                           ncol=2),
               Kof.snapshot.legend,
               ncol=2,widths=c(3,0.5))


# 
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# ---- SECTION 5: WRITE TO .PNG ----
#
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# 


dir.create(paste("2_Social/FlatDataFiles/BHS/ImpactSummOutput/Kofiau/Figures--produced",
                 format(Sys.Date(),format="%Y_%m_%d"),sep="_"))

FigureFileName <- paste("2_Social/FlatDataFiles/BHS/ImpactSummOutput/Kofiau/Figures--produced",
                        format(Sys.Date(),format="%Y_%m_%d"),sep="_")


# ---- 5.1 FOOD SECURITY ----

png(paste(FigureFileName,"FS.status.trend.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.fs.st)
dev.off()

png(paste(FigureFileName,"FS.impact.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.fs.i)
dev.off()


# ---- 5.2 MATERIAL ASSETS ----

png(paste(FigureFileName,"MA.status.trend.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.ma.st)
dev.off()

png(paste(FigureFileName,"MA.impact.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.ma.i)
dev.off()


# ---- 5.3 MARINE TENURE ----

png(paste(FigureFileName,"MT.status.trend.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.mt.st)
dev.off()

png(paste(FigureFileName,"MT.impact.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.mt.i)
dev.off()


# ---- 5.4 PLACE ATTACHMENT ----

png(paste(FigureFileName,"PA.status.trend.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.pa.st)
dev.off()

png(paste(FigureFileName,"PA.impact.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.pa.i)
dev.off()


# ---- 5.5 SCHOOL ENROLLMENT ----

png(paste(FigureFileName,"SE.status.trend.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.se.st)
dev.off()

png(paste(FigureFileName,"SE.impact.png",sep="/"),
    units="in",height=7.5,width=7.5,res=400)
plot(Kof.MPAimpact.summ.se.i)
dev.off()


# ---- 5.6 SNAPSHOT PLOT ----

png(paste(FigureFileName,"standardized.impacts.png",sep="/"),
    units="in",height=5,width=12,res=400)
grid.newpage()
grid.draw(snapshot.Kof.MPAimpact.bothyr)
dev.off()
