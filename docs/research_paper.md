# Table of Contents
1. [Session-based Recommendation](# Recommendation Papers)
2. [Various Recommendation Research](# Others Recommender Systems Paperlist )
2. [Research based on GNN](# GNN based Recommender Systems)
   - [GNN in different recommendation stages](#Recommendation-Stages)
      - [Matching](#Matching)
      - [Ranking](#Ranking)
      - [Re-ranking](#Re-ranking)
   - [GNN in different recommendation scenarios](#Recommendation-Scenarios)
      - [Social Recommendation](#Social-Recommendation)
      - [Sequential Recommendation](#Sequential-Recommendation)
      - [Session Recommendation](#Session-Recommendation)
      - [Bundle Recommendation](#Bundle-Recommendation)
      - [Cross Domain Recommendation](#Cross-Domain-Recommendation)
   - [GNN for different recommendation objectives](#Recommendation-Objectives)
      - [Multi-behavior Recommendation](#Multi-behavior-Recommendation)
      - [Diversity](#Diversity)
      - [Explainability](#Explainability)
      - [Fairness](#Fairness)

# Recommendation Papers

## **Next-Item Recommendation**

Squential Recommendation and Session-based Recommendation

| Conference    | Title                         | Links |
| ------------- | -------------                 |-------------|
| ICDM '18      | SASrec : Self-Attentive Sequential Recommendation [[paper]](https://arxiv.org/pdf/1808.09781.pdf) [[code]](https://github.com/pmixer/SASRec.pytorch)                 |[notion](https://quasar-mars-030.notion.site/SASrec-Self-Attentive-Sequential-Recommendation-7f6f8f37630f4fd59ace391c13eafabf) | 
| CIKM '20 |Star Graph Neural Networks for Session-based Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3340531.3412014) [[code]](https://github.com/nudtzpan/SGNNHNg)| [notion](https://quasar-mars-030.notion.site/Star-Graph-Neural-Networks-for-Session-based-Recommendation-fb337108d5304e208a5a2c8bea3cf7ea)|
| SIGIR '20  (short) | TAGNN: Target Attentive Graph Neural Networks for Session-based Recommendation [[paper]](https://arxiv.org/pdf/2005.02844.pdf) [[code]](https://github.com/CRIPAC-DIG/TAGNN)| [notion](https://quasar-mars-030.notion.site/TAGNN-Target-Attentive-Graph-Neural-Networks-for-Session-based-Recommendation-9949d39d08164e8db765c31861b34e0f) |
| SIGIR '20 |LightGCN: Simplifying and Powering Graph Convolution Network for Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3397271.3401063) [[code]](https://github.com/gusye1234/LightGCN-PyTorch)| [notion](https://quasar-mars-030.notion.site/LightGCN-Simplifying-and-Powering-Graph-Convolution-Network-for-Recommendation-c10160d55bcf4bd79bb62ea5a17a0fe6)|
| KDD '20 |Handling Information Loss of Graph Neural Networks for Session-based Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3394486.3403170) [[code]](https://github.com/twchen/lessr)| [notion](https://quasar-mars-030.notion.site/Handling-Information-Loss-of-Graph-Neural-Networks-for-Session-based-Recommendation-5c2fe6a0058548338fd66d4b9b75b607) |
|RecSys '20 | Long-tail Session-based Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3383313.3412222) | [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=53829)|
|AAAI '21| Graph-Enhanced Multi-Task Learning of Multi-Level Transition Dynamics for Session-based Recommendation [[paper]](https://ojs.aaai.org/index.php/AAAI/article/view/16534/16341) [[code]](https://github.com/sessionRec/MTD) | [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=54246)|
|WWW '21| DGCN: Diversified Recommendation with Graph Convolution Networks [[paper]](https://dl.acm.org/doi/pdf/10.1145/3442381.3449835) [[code]](https://github.com/tsinghua-fib-lab/DGCN)| [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=54920)|
|arXiv '21| Improved Representation Learning for Session-based Recommendation [[paper]](https://arxiv.org/pdf/2107.01516) [[code]](https://github.com/The-Learning-Machines/SBR)| [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=52826)|
|SIGIR '21| Sequential Recommendation with Graph Neural Networks [[paper]](https://dl.acm.org/doi/pdf/10.1145/3404835.3462968) [[code]](https://github.com/tsinghua-fib-lab/SIGIR21-SURGE) (tensorflow) | [notion](https://quasar-mars-030.notion.site/Sequential-Recommendation-with-Graph-Neural-Networks-8ce53a5c4a8e4a1ba7443ed854380a75)|
|SIGIR '21|Dual Attention Transfer in Session-based Recommendation with Multi-dimensional Integration [[paper]](https://dl.acm.org/doi/pdf/10.1145/3404835.3462866) | [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=54685)|
|CIKM '21 (short)| CauSeR: Causal Session-based Recommendations for Handling Popularity Bias [[paper]](https://dl.acm.org/doi/pdf/10.1145/3459637.3482071) | [notion](https://quasar-mars-030.notion.site/CauSeR-Causal-Session-based-Recommendations-for-Handling-Popularity-Bias-ba77eda7bfce4e27bb47c94c88684bf5)|
|AAAI '22 DGL (workshop)| SR-GCL: Session-Based Recommendation with Global Context Enhanced Augmentation in Contrastive Learning [[paper]](https://arxiv.org/pdf/2209.10807) | [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=55885)|
|SIGIR '22 | Are Graph Augmentations Necessary? Simple Graph Contrastive Learning for Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3477495.3531937) [[code]](https://github.com/Wu-Xi/SimGCL-MixGCF)| [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=55399)|
|SIGIR '22 |Multi-Faceted Global Item Relation Learning for Session-Based Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3477495.3532024) [[code]](https://github.com/zc-97/MGIR)| [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=55673)|
|SIGIR '22 (short)| CORE: Simple and Effective Session-based Recommendation within Consistent Representation Space [[paper]](https://dl.acm.org/doi/pdf/10.1145/3477495.3531955) [[code]](https://github.com/RUCAIBox/CORE)| [iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=55179) |
|CIKM '22 | A Relevant and Diverse Retrieval-enhanced Data Augmentation Framework for Sequential Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3511808.3557071) |[notion](https://quasar-mars-030.notion.site/A-Relevant-and-Diverse-Retrieval-enhanced-Data-Augmentation-Framework-for-Sequential-Recommendation-55c0ca14aad8406cb6cbcc28e0227df9)|
|CIKM '22 | Memory Bank Augmented Long-tail Sequential Recommendation [[paper]](https://dl.acm.org/doi/pdf/10.1145/3511808.3557391) [[code]](https://github.com/yidanhu33/MASR) |[iislab seminar](http://iislab.skku.edu/iish/index.php?_filter=search&mid=seminar&document_srl=56272)|


## **Long-tail Classification**
| Conference    | Title                         | Links |
| ------------- | -------------                 |-------------|
| ICRL 2021 | Long-tail Learning via Logit Adjustment [[paper]](https://openreview.net/pdf?id=37nvvqkCo5) [[code]](https://github.com/Chumsy0725/logit-adj-pytorch?ref=pythonrepo.com)| [notion](https://quasar-mars-030.notion.site/Long-tail-Learning-via-Logit-Adjustment-ICLR-2021-fc822e26c1d740c0a50555c9396f715b)|


# Others Recommender Systems Paperlist 

## Survey Papers
* Deep Learning based Recommender System: A Survey and New Perspectives [2017][[__PDF__]](https://arxiv.org/pdf/1707.07435.pdf)
* 基于深度学习的推荐系统研究综述 [2018] [[__PDF__](http://cjc.ict.ac.cn/online/bfpub/hlww-2018124152810.pdf)]
* Explainable Recommendation: A Survey and New Perspectives [2018] [[__PDF__]](https://arxiv.org/pdf/1804.11192.pdf)
* Sequence-Aware Recommender Systems [2018] [[__PDF__]](https://arxiv.org/pdf/1802.08452.pdf)
* DeepRec: An Open-source Toolkit for Deep Learning based Recommendation [IJCAI 2019] [[__PDF__]](https://arxiv.org/pdf/1905.10536.pdf)
* Graph Embedding Techniques, Applications, and Performance: A Survey [2018] [[__PDF__]](https://arxiv.org/pdf/1705.02801)
* A survey on session-based recommender systems [2021] [[__PDF__]](https://arxiv.org/pdf/1902.04864.pdf)
* Graph Learning based Recommender Systems: A Review [IJCAI 2021] [[PDF]](https://arxiv.org/pdf/2105.06339.pdf)

## Recommender Systems with Content Information
  ### Review-based Approaches
  * Convolutional Matrix Factorization for Document Context-Aware Recommendation [RecSys 2016] [[__PDF__]](http://delivery.acm.org/10.1145/2960000/2959165/p233-kim.pdf?ip=159.226.43.46&id=2959165&acc=ACTIVE%20SERVICE&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35&__acm__=1568101423_225c8120374449cc9c20766fe8a2911c) [[__code__]]( https://github.com/cartopy/ConvMF)

  * Joint Deep Modeling of Users and Items Using Reviews for Recommendation [WSDM 2017][[__PDF__]](https://arxiv.org/pdf/1701.04783.pdf)[[__code__]](https://github.com/chenchongthu/DeepCoNN)
  * Multi-Pointer Co-Attention Networks for Recommendation [KDD 2018][[__PDF__]](https://arxiv.org/pdf/1801.09251)[[__code__]](https://github.com/vanzytay/KDD2018_MPCN)
  * Gated attentive-autoencoder for content-aware recommendation [WSDM 2019][[__PDF__]](https://arxiv.org/pdf/1812.02869)[[__code__]](https://github.com/allenjack/GATE)


## Collaborative Filtering Recommendations
  * Neural Collaborative Filtering [WWW 2017][[__PDF__]](https://arxiv.org/pdf/1708.05031.pdf)[[__code__]](https://paperswithcode.com/paper/neural-collaborative-filtering-1#code)
  * Collaborative Denoising Auto-Encoders for Top-N Recommender Systems [[__pdf__]](https://alicezheng.org/papers/wsdm16-cdae.pdf) [[__code__]](https://github.com/gtshs2/Collaborative-Denoising-Auto-Encoder)
  * Outer Product-based Neural Collaborative Filtering [IJCAI 2018][[__PDF__]](https://arxiv.org/pdf/1808.03912v1.pdf)[[__code__]](https://github.com/duxy-me/ConvNCF)
  * Neural Graph Collaborative Filtering [SIGIR 2019] [[__PDF__]](https://arxiv.org/pdf/1905.08108v1.pdf)[[__code__]](https://paperswithcode.com/paper/neural-graph-collaborative-filtering)
  * Transnets: Learning to transform for recommendation [RecSys 2017][[__PDF__]](https://arxiv.org/pdf/1704.02298)[[__code__]](https://github.com/rosecatherinek/TransNets)
  * Metric Factorization: Recommendation beyond Matrix Factorization [[__PDF__]](https://arxiv.org/pdf/1802.04606.pdf)[[__code__]](https://github.com/cheungdaven/metricfactorization)
  * Improving Top-K Recommendation via Joint Collaborative Autoencoders [[__PDF__]](http://people.tamu.edu/~zhuziwei/pubs/Ziwei_WWW_2019.pdf)[[__code__]](https://github.com/Zziwei/Joint-Collaborative-Autoencoder)
  * Collaborative Metric Learning [WWW2017][[__code__]](https://github.com/changun/CollMetric)[[__PDF__]](http://www.cs.cornell.edu/~ylongqi/paper/HsiehYCLBE17.pdf)
  * NeuRec : On Nonlinear Transformation for Personalized Ranking [IJACA 2018] [[__PDF__]](https://www.ijcai.org/proceedings/2018/0510.pdf)[[__code__]](https://github.com/cheungdaven/NeuRec)
  * DeepCF : A Unified Framework of Representation Learning and Matching Function Learning in Recommender System [AAAI2019 oral]   [[__PDF__]](https://arxiv.org/pdf/1901.04704v1.pdf)[[__code__]](https://github.com/familyld/DeepCF)
  * Try This Instead:Personalized and Interpretable Substitute Recommendation [[SIGIR2020]] [[__PDF__]](https://dl.acm.org/doi/pdf/10.1145/3397271.3401042)[[__code__]](https://bitbucket.org/rockytchen/a2cf-sigir20/src/master/)
  * STAR-GCN: Stacked and Reconstructed Graph Convolutional Networks for Recommender Systems [[IJCAI2019]] [[__PDF__]](https://arxiv.org/pdf/1905.13129.pdf) [[__code__]](https://github.com/jennyzhang0215/STAR-GCN)
  * Unifying Explicit and Implicit Feedback for Rating Prediction and Ranking Recommendation Tasks [[ICTIR2019]] [[__PDF__]](http://delivery.acm.org/10.1145/3350000/3344225/p149-jadidinejad.pdf?ip=159.226.43.46&id=3344225&acc=ACTIVE%20SERVICE&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35&__acm__=1574690604_f26ab14b23dc0c85179633b7bd835f03) [[__code__]](https://github.com/amirj/unifying_explicit_implicit)
  * Efficient Heterogeneous Collaborative Filtering without Negative Sampling for Recommendation [AAAI2020] [[__PDF__]](http://yongfeng.me/attach/chen-aaai2020.pdf)[[__code__]](https://github.com/chenchongthu/EHCF)
  * Revisiting Graph based Collaborative Filtering: A Linear Residual Graph Convolutional Network Approach [AAAI2020] [[__PDF__]](https://www.aaai.org/ojs/index.php/AAAI/article/download/5330/5186)[[__code__]](https://github.com/newlei/LR-GCCF)
  * LightGCN: Simplifying and Powering Graph Convolution Network for Recommendation [SIGIR2020] [[__PDF__]](https://www.semanticscholar.org/paper/LightGCN%3A-Simplifying-and-Powering-Graph-Network-He-Deng/bb44eaa2b5b1ff8d626e42a24b9b76c4f07d8590)[[__code__]](https://github.com/kuandeng/LightGCN)
  * Disentangled Graph Collaborative Filtering [SIGIR2020][[__PDF__]](https://arxiv.org/pdf/2007.01764.pdf) [[__code__]](https://github.com/xiangwang1223/disentangled_graph_collaborative_filtering)
  * HGCF: Hyperbolic Graph Convolution Networks for Collaborative Filtering [WWW2021] [[__PDF__]](https://www.cs.toronto.edu/~mvolkovs/www2021_hgcf.pdf)[[__code__]](https://github.com/layer6ai-labs/HGCF)
  * Contrastive Learning for Recommender System [2021] [[__PDF__]](https://arxiv.org/pdf/2101.01317.pdf)
  
     
## Explainable Recommender Systems
* Explainable Recommendation via Multi-Task Learning in Opinionated Text Data [SIGIR 2018][[__PDF__]](https://arxiv.org/pdf/1806.03568.pdf)
* TEM: Tree-enhanced Embedding Model for Explainable Recommendation [WWW 2018][[__PDF__]](http://staff.ustc.edu.cn/~hexn/papers/www18-tem.pdf)
* Neural Attentional Rating Regression with Review-level Explanations [WWW 2018] [[__PDF__]](http://www.thuir.cn/group/~YQLiu/publications/WWW2018_CC.pdf)[[__code__]](https://github.com/chenchongthu/NARRE)

## Sequence-Aware Recommender Systems

### Session-based Recommender Systems
* Session-based Recommendations with Recurrent Neural Networks [ICLR 2016] [[__PDF__]](https://arxiv.org/pdf/1511.06939.pdf)[[__code__]](https://github.com/hidasib/GRU4Rec)
* Neural Attentive Session-based Recommendation [CIKM 2017] [[__PDF__]](https://arxiv.org/pdf/1711.04725.pdf)[[__code__]](https://github.com/lijingsdu/sessionRec_NARM)
* When Recurrent Neural Networks meet the Neighborhood for Session-Based Recommendation [RecSys 2017][[__PDF__]](http://ls13-www.cs.tu-dortmund.de/homepage/publications/jannach/Conference_RecSys_2017.pdf)
* STAMP: Short-Term Attention/Memory Priority Model for Session-based Recommendation [KDD 2018] [[__PDF__]](https://dl.acm.org/ft_gateway.cfm?id=3219950&type=pdf)[[__code__]](https://github.com/uestcnlp/STAMP)

* RepeatNet: A Repeat Aware Neural Recommendation Machine for Session-based Recommendation [AAAI 2019][[__PDF__]](https://staff.fnwi.uva.nl/m.derijke/wp-content/papercite-data/pdf/ren-repeatnet-2019.pdf)[[__code__]](https://github.com/PengjieRen/RepeatNet)
* Session-based Recommendation with Graph Neural Networks [AAAI 2019][[__PDF__]](https://arxiv.org/pdf/1811.00855.pdf)[[__code__]](https://github.com/CRIPAC-DIG/SR-GNN)
 
* Streaming Session-based Recommendation [KDD 2019] [[__PDF__]](https://dl.acm.org/citation.cfm?id=3292500.3330839)
* Session-based Social Recommendation via Dynamic Graph Attention Networks [WSDM 2019][[__PDF__]](http://www.cs.toronto.edu/~lcharlin/papers/fp4571-songA.pdf)[[__code__]](https://github.com/DeepGraphLearning/RecommenderSystems/tree/master/socialRec  )
* Sequence and Time Aware Neighborhood for Session-based Recommendations [SIGIR 2019] [[__PDF__]](https://dl.acm.org/citation.cfm?id=3331322)
* Performance Comparison of Neural and Non-Neural Approaches to Session-based Recommendation [RecSys 2019][[__PDF__]](https://web-ainf.aau.at/pub/jannach/files/Conference_RecSys_2019_sessions.pdf)
* Predictability Limits in Session-based Next Item Recommendation [RecSys 2019][[__PDF__]](https://dl.acm.org/citation.cfm?id=3346990)
* Empirical Analysis of Session-Based Recommendation Algorithms [2019] [[__PDF__]](https://arxiv.org/pdf/1910.12781.pdf)[[__code__]](https://github.com/rn5l/session-rec)
* A Collaborative Session-based Recommendation Approach with Parallel Memory Modules [SIGIR2019][[__PDF__]](https://staff.fnwi.uva.nl/m.derijke/wp-content/papercite-data/pdf/wang-2019-collaborative.pdf) [[__code__]](https://github.com/wmeirui/CSRM_SIGIR2019)
* Rethinking the Item Order in Session-based Recommendation with Graph Neural Networks [CIKM2019][[__PDF__]](https://dl.acm.org/citation.cfm?id=3358010)
* Session-based Recommendation with Hierarchical Memory Networks [CIKM2019] [[__PDF__]](https://dl.acm.org/citation.cfm?id=3358120)
* ISLF: Interest Shift and Latent Factors Combination Model for Session-based Recommendation [IJCAI2019][[__PDF__]](https://www.ijcai.org/proceedings/2019/0799.pdf)
* TAGNN: Target Attentive Graph Neural Networks for Session-based Recommendation [SIGIR2020][[__PDF__]](https://arxiv.org/abs/2005.02844)[[__code__]](https://github.com/CRIPAC-DIG/TAGNN)
* Star Graph Neural Networks for Session-based Recommendation[CIKM2020][[__PDF__]](https://staff.fnwi.uva.nl/m.derijke/wp-content/papercite-data/pdf/pan-2020-star.pdf)
* Session-based Recommendation with Hierarchical Leaping Networks[SIGIR2020]][[__PDF__]](https://dl.acm.org/doi/abs/10.1145/3397271.3401217)
* Handling Information Loss of Graph Neural Networks for Session-based Recommendation[KDD2020][[__PDF__]](https://dl.acm.org/doi/pdf/10.1145/3394486.3403170)[[__code__]](https://github.com/twchen/lessr)
* Incorporating User Micro-behaviors and Item Knowledge into Multi-task Learning for Session-based Recommendation[SIGIR2020][[__PDF__]](https://arxiv.org/abs/2006.06922)[[__code__]](https://github.com/ciecus/MKM-SR)
* Session-aware Linear Item-Item Models for Session-based Recommendation [WWW2021] [[PDF]](https://dl.acm.org/doi/fullHtml/10.1145/3442381.3450005)[[__code__]](https://github.com/jin530/SLIST)


### Sequential recommendations
* Personalized Top-N Sequential Recommendation via Convolutional Sequence Embedding [WSDM 2018][[__PDF__]](http://www.sfu.ca/~jiaxit/resources/wsdm18caser.pdf)[[__code__]](https://github.com/graytowne/caser_pytorch)
* Self-Attentive Sequential Recommendation [ICDM 2018] [[__PDF__]](https://arxiv.org/pdf/1808.09781)[[__code__]](https://github.com/kang205/SASRec)
* Hierarchical Gating Networks for Sequential Recommendation [KDD 2019][[__PDF__]](https://arxiv.org/pdf/1906.09217.pdf)[[__code__]](https://github.com/graytowne/caser_pytorch)
* Next Item Recommendation with Self-Attention [ACM 2018][[__PDF__]](https://arxiv.org/pdf/1808.06414)[[__code__]](https://github.com/cheungdaven/DeepRec/blob/master/models/seq_rec/AttRec.py)
* Time Interval Aware Self-Attention for Sequential Recommendation [WSDM2020][[__PDF__]](https://cseweb.ucsd.edu/~jmcauley/pdfs/wsdm20b.pdf)
* Time to Shop for Valentine’s Day: Shopping Occasions and Sequential Recommendation in E-commerce [WSDM2020][[__PDF__]](https://www.hongliangjie.com/publications/wsdm2020.pdf)
* Disentangled Self-Supervision in Sequential Recommenders [KDD2020][[__PDF__]](http://pengcui.thumedialab.com/papers/DisentangledSequentialRecommendation.pdf)
* DynamicRec: A Dynamic Convolutional Network for Next Item Recommendation [CIKM2020][[__PDF__]](http://cseweb.ucsd.edu/~gary/pubs/mehrab-cikm-2020.pdf)[[__code__]](https://github.com/Mehrab-Tanjim/DynamicRec)
* S3-Rec: Self-Supervised Learning for Sequential Recommendation with Mutual Information Maximization [CIKM2020][[__PDF__]](https://link.zhihu.com/?target=https%3A//arxiv.org/abs/2008.07873)[[__code__]](https://link.zhihu.com/?target=https%3A//github.com/RUCAIBox/CIKM2020-S3Rec)
### Long and short-term Sequential Recommendations

* Collaborative Memory Network for Recommendation Systems [SIGIR 2018][[__PDF__]](https://arxiv.org/pdf/1804.10862)[[__code__]](https://github.com/tebesu/CollaborativeMemoryNetwork)
* Sequential Recommender System based on Hierarchical Attention Network [IJCAI 2018] [[__PDF__]](https://www.ijcai.org/proceedings/2018/0546.pdf)[[__code__]](https://github.com/uctoronto/SHAN)
* Hierarchical Temporal Convolutional Networks for Dynamic Recommender Systems [WWW 2019] [[__PDF__]](https://arxiv.org/pdf/1904.04381.pdf)
* A Large-scale Sequential Deep Matching Model for E-commerce Recommendation[CIKM 2019][[__PDF__]](https://arxiv.org/pdf/1909.00385.pdf)[[__code__]](https://github.com/alicogintel/SDM)
* Recurrent Neural Networks for Long and Short-Term Sequential Recommendation [RecSys 2018] [[__PDF__]](https://arxiv.org/pdf/1807.09142.pdf)
* A Dynamic Co-attention Network for Session-based Recommendation [CIKM 2019][[__PDF__]](http://delivery.acm.org/10.1145/3360000/3357964/p1461-chen.pdf?ip=159.226.43.46&id=3357964&acc=OPEN&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E6D218144511F3437&__acm__=1573525498_2dff93fd7304076faa5b5f8c0a604c13)
* A Long-Short Demands-Aware Model for Next-Item Recommendation [CoRR 2019][[__PDF__]](https://arxiv.org/pdf/1903.00066.pdf)
* Learning from History and Present : Next-item Recommendation via Discriminatively Exploiting User Behaviors [KDD 2018][[__PDF__]](https://arxiv.org/pdf/1808.01075.pdf)[**JD**]
* A Review-Driven Neural Model for Sequential Recommendation [IJCAI 2019] [[__PDF__]](https://arxiv.org/pdf/1907.00590.pdf)
* Adaptive User Modeling with Long and Short-Term Preferences for Personalized Recommendation [IJCAI 2019] [[__PDF__]](https://www.microsoft.com/en-us/research/uploads/prod/2019/07/IJCAI19-ready_v1.pdf)[[__code__]](https://github.com/zepingyu0512/sli_rec)[**Microsoft**]
* Long- and Short-term Preference Learning for Next POI Recommendation [CIKM 2019] [[__PDF__]](http://delivery.acm.org/10.1145/3360000/3358171/p2301-wu.pdf?ip=159.226.43.46&id=3358171&acc=OPEN&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E6D218144511F3437&__acm__=1574662810_7d7654698714493518013d4fde64f9c2)
* Neural News Recommendation with Long- and Short-term User Representations [ACL 2019][**Microsoft**][[__PDF__]](https://nvagus.github.io/paper/ACL19NewsRec.pdf)
* CTRec: A Long-Short Demands Evolution Model for Continuous-Time Recommendation [[__PDF__]](https://www.researchgate.net/publication/334579722_CTRec_A_Long-Short_Demands_Evolution_Model_for_Continuous-Time_Recommendation)
* Group-Aware Long- and Short-Term Graph Representation Learning for Sequential Group Recommendation [SIGIR2020][[__PDF__]](https://dl.acm.org/doi/10.1145/3397271.3401136)
* MRIF: Multi-resolution Interest Fusion for Recommendation [SIGIR2020] [[__PDF__]](https://arxiv.org/abs/2007.07084)
### Context-Aware Sequential Recommendations
* Context-Aware Sequential Recommendations withStacked Recurrent Neural Networks [WWW 2019][[__PDF__]](http://delivery.acm.org/10.1145/3320000/3313567/p3172-rakkappan.pdf?ip=159.226.43.46&id=3313567&acc=ACTIVE%20SERVICE&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35&__acm__=1568094616_ce11de1b93788a1072a48c6212d24287)[[__code__]](https://bitbucket.org/cdal/stackedcontextawarernn)
  

## Knowledge Graph-based Recommendations
* Improving Sequential Recommendation with Knowledge-Enhanced Memory Networks [SIGIR 2018] [[__PDF__]](http://delivery.acm.org/10.1145/3220000/3210017/p505-huang.pdf?ip=159.226.43.46&id=3210017&acc=ACTIVE%20SERVICE&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35&__acm__=1568100770_6bdfb19ed107162bbc2ad22e7ebf1463)
  - dataset and code : https://github.com/RUCDM/KB4Rec
* DKN: Deep Knowledge-Aware Network for News Recommendation [WWW 2018] [[__PDF__]](https://arxiv.org/pdf/1801.08284.pdf)[[__code__]](https://github.com/hwwang55/DKN)
* RippleNet: Propagating User Preferences on the Knowledge Graph for Recommender Systems [CIKM 2018] [[__PDF__]](https://arxiv.org/abs/1803.03467)[[__code__]](https://github.com/hwwang55/RippleNet)
* Knowledge Graph Convolutional Networks for Recommender Systems [WWW 2019] [[__PDF__]](https://arxiv.org/pdf/1904.12575.pdf)[[__code__]](https://github.com/hwwang55/KGCN)
* KGAT: Knowledge Graph Attention Network for Recommendation [KDD2019][[__PDF__]](https://arxiv.org/pdf/1905.07854v2.pdf)[[__code__]](https://github.com/xiangwang1223/knowledge_graph_attention_network)

## Reinforcement Learning Approaches
 * DRN: A Deep Reinforcement Learning Framework for News Recommendation [WWW 2018] [[__PDF__]](http://www.personal.psu.edu/~gjz5038/paper/www2018_reinforceRec/www2018_reinforceRec.pdf)
 * Top-K Off-Policy Correction for a REINFORCE Recommender System [WSDM 2019] [[__PDF__]](https://arxiv.org/pdf/1812.02353.pdf)[[**Youtube**]]

## Multi-behavior learning for Recommendation
* Efficient Heterogeneous Collaborative Filtering without Negative Sampling for Recommendation [AAAI2020][[__PDF__]](http://www.thuir.cn/group/~mzhang/publications/AAAI2020-Chenchong.pdf)[[__code__]](https://github.com/chenchongthu/EHCF)

## Multi-Interest and Diversity learning for Recommendation
* Deep Interest with Hierarchical Attention Network for Click-Through Rate Prediction [SIGIR2020][[__PDF__]](https://arxiv.org/abs/2005.12981)[[__code__]](https://github.com/stellaxu/DHAN)
* Controllable Multi-Interest Framework for Recommendation [KDD2020] [[__PDF__]](https://arxiv.org/abs/2005.09347)[[__code__]](https://github.com/THUDM/ComiRec)
* Multi-Interest Network with Dynamic Routing for Recommendation at Tmall [[__PDF__]](https://arxiv.org/abs/1904.08030)
* Modeling Multi-Purpose Sessions for Next-Item Recommendations via Mixture-Channel Purpose Routing Networks (IJCAI2020)[[__PDF__]](https://www.ijcai.org/Proceedings/2019/0523.pdf)
* Sequential and Diverse Recommendation with Long Tail [IJCAI2019][[__PDF__]](https://www.ijcai.org/Proceedings/2019/0380.pdf)
* Improving End-to-End Sequential Recommendations with Intent-aware Diversification [CIKM2020) [[__PDF__]](https://arxiv.org/abs/1908.10171)[[__code__]](https://github.com/yejinjkim/seq-div-rec)
* A Framework for Recommending Accurate and Diverse Items Using Bayesian Graph Convolutional Neural Networks [KDD2020][[__PDF__]](https://dl.acm.org/doi/pdf/10.1145/3394486.3403254)
*  M2GRL: A Multi-task Multi-view Graph Representation Learning Framework for Web-scale Recommender Systems[KDD2020][[__PDF__]](https://arxiv.org/pdf/2005.10110.pdf)[**Alibaba Match**]
* Deep Multi-Interest Network for Click-through Rate Prediction [CIKM2020][[__PDF__]](https://dl.acm.org/doi/pdf/10.1145/3340531.3412092)
* Recent Advances in Diversified Recommendation
* Diversified Interactive Recommendation with Implicit Feedback [AAAI2020]
## Multi-task learning for Recommendation
* [**ESMM**]Entire Space Multi-Task Model: An E ective Approach for Estimating Post-Click Conversion Rate [SIGIR2018][[__PDF__]](https://arxiv.org/pdf/1804.07931.pdf)
* [**ESM2**]Conversion Rate Prediction via Post-Click Behaviour Modeling
* [**MMoE**]Modeling task relationships in multi-task learning with multi-gate mixture-of-experts [KDD2018][[__PDF__]](https://dl.acm.org/doi/10.1145/3219819.3220007)
* Recommending What Video to Watch Next: A Multitask Ranking System [RecSys2019][[__PDF__]](https://daiwk.github.io/assets/youtube-multitask.pdf)
* [**RecSys2020 best paper**]Progressive Layered Extraction (PLE): A Novel Multi-Task Learning (MTL) Model for Personalized Recommendations[Recsys2020][[__PDF__]](https://dl.acm.org/doi/10.1145/3383313.3412236)
## Re-ranking
* Personalized Re-ranking for Recommendation [RecSys2019][[__PDF__]](https://arxiv.org/pdf/1904.06813.pdf)[[__code__]](https://github.com/rank2rec/rerank)[[__dataset__]](https://github.com/rank2rec/rerank)
* Learning a Deep Listwise Context Model for Ranking Refinement [SIGIR2018][[__PDF__]](https://arxiv.org/pdf/1804.05936.pdf)[[__code__]](https://github.com/QingyaoAi/Deep-Listwise-Context-Model-for-Ranking-Refinement)
## Industry
### CTR Prediction

* DeepFM: A Factorization-Machine based Neural Network for CTR Prediction [[IJCAI 2017] [[__PDF__]](https://arxiv.org/abs/1703.04247) [**Huawei**]
* xDeepFM: Combining Explicit and Implicit Feature Interactions for Recommender Systems] [KDD2018] [[__PDF__]](https://arxiv.org/pdf/1803.05170.pdf) [**Microsoft**]

* Order-aware Embedding Neural Network for CTR Prediction][SIGIR 2019] [[__PDF__]](https://dl.acm.org/citation.cfm?id=3331332) [**Huawei**]

* Feature Generation by Convolutional Neural Network for Click-Through Rate Prediction [WWW 2019] [[__PDF__]](https://arxiv.org/abs/1904.04447) [**Huawei**]
*  Interaction-aware Factorization Machines for Recommender Systems [AAAI2019] [[__PDF__]](https://arxiv.org/pdf/1902.09757.pdf)[[__code__]](https://github.com/cstur4/interaction-aware-factorization-machines)[**Tencent**]


### Match
* [**Embedding**] Item2Vec-Neural Item Embedding for Collaborative Filtering [Microsoft 2017][[__PDF__]](https://arxiv.org/pdf/1603.04259.pdf)
* [**Embedding**] DeepWalk- Online Learning of Social Representations [KDD 2014][[__PDF__]](http://www.perozzi.net/publications/14_kdd_deepwalk.pdf)
* [**Embedding**] LINE - Large-scale Information Network Embedding [Microsoft 2015][[__PDF__]](https://arxiv.org/pdf/1503.03578.pdf)
* [**Embedding**]  Node2vec - Scalable Feature Learning for Networks [Stanford 2016][[__PDF__]](https://cs.stanford.edu/~jure/pubs/node2vec-kdd16.pdf)
* [**Embedding**] Structural Deep Network Embedding [KDD2016] [[__PDF__]](https://www.kdd.org/kdd2016/papers/files/rfp0191-wangAemb.pdf)

* [**Embedding**]  Item2Vec-Neural Item Embedding for Collaborative Filtering [Microsoft 2017][[__PDF__]](https://arxiv.org/pdf/1603.04259.pdf)

* [**Embedding**] Real-time Personalization using Embeddings for Search Ranking at Airbnb [KDD 2018] [[__PDF__]](https://astro.temple.edu/~tua95067/kdd2018.pdf)

* [**Embedding**] Graph Convolutional Neural Networks for Web-Scale Recommender Systems [KDD 2018] [[__PDF__]](https://arxiv.org/pdf/1806.01973)[**Pinterest**]
* Is a Single Embedding Enough ? Learning Node Representations that Capture Multiple Social Contexts [WWW 2019] [[__PDF__]](https://arxiv.org/pdf/1905.02138.pdf)
* [**Embedding**]  Representation Learning for Attributed Multiplex Heterogeneous Network [KDD 2019] [[__PDF__]](https://arxiv.org/pdf/1905.01669.pdf)
* [**DNN Match**] Deep Neural Networks for YouTube Recommendations  [RecSys 2016] [[__PDF__]](https://static.googleusercontent.com/media/research.google.com/zh-CN//pubs/archive/45530.pdf)[**Youtube**]
* [**DNN Match**] Sampling-Bias-Corrected Neural Modeling for Large Corpus Item Recommendations[RecSys 2019] [[__PDF__]](https://dl.acm.org/doi/pdf/10.1145/3298689.3346996)
* [**Semantic Match**] Deep Semantic Matching for Amazon Product Search [WSDM 2019][[__PDF__]](https://wsdm2019-dapa.github.io/slides/05-YiweiSong.pdf)[**Amazon**]
* [**Tree Match**] Joint Optimization of Tree-based Index and Deep Model for Recommender Systems [NeurIPS 2019]
[[__PDF__]](https://arxiv.org/pdf/1902.07565.pdf)[**Tencent**]

### Others
* Latent Cross: Making Use of Context in Recurrent Recommender Systems [WSDM 2018][[__PDF__]](http://delivery.acm.org/10.1145/3160000/3159727/p46-beutel.pdf?ip=159.226.43.46&id=3159727&acc=OA&key=33E289E220520BFB%2ED25FD1BB8C28ADF7%2E4D4702B0C3E38B35%2E5945DC2EABF3343C&__acm__=1568103183_98476c18cb349d52e835c76d85b83253)[**Youtube**]
* Learning from History and Present: Next-item Recommendation via Discriminatively Exploting Users Behaviors [KDD 2018][[__PDF__]](https://arxiv.org/pdf/1808.01075.pdf)

* Real-time Attention Based Look-alike Model for Recommender System [KDD 2019] [[__PDF__]](https://arxiv.org/pdf/1906.05022) [**Tencent**]

### Alibaba papers-continuous updating
* [**Match**] TDM：Learning Tree-based Deep Model for Recommender Systems [KDD2018] [[__PDF__]](https://arxiv.org/pdf/1801.02294.pdf)
* [**Match**] Multi-Interest Network with Dynamic Routing for Recommendation at Tmall [2019][[__PDF__]](https://arxiv.org/pdf/1904.08030)
* [**Long and short-term**] SDM: Sequential Deep Matching Model for Online Large-scale Recommender System [CIKM 2019][[__PDF__]](https://arxiv.org/pdf/1909.00385v1.pdf)

* [**Embedding**] Billion-scale Commodity Embedding for E-commerce Recommendation in Alibaba [KDD 2018][[__PDF__]](https://arxiv.org/pdf/1803.02349.pdf)
* [**Embedding**] Learning and Transferring IDs Representation in E-commerce  [KDD 2018] [[__PDF__]](https://arxiv.org/pdf/1712.08289.pdf)
* [**Representations**] ATRank: An Attention-Based User Behavior Modeling Framework for Recommendation [AAAI 2018]  [[__PDF__]](https://arxiv.org/pdf/1711.06632.pdf)

* [**Representations**] Perceive Your Users in Depth: Learning Universal User Representations from Multiple E-commerce Tasks [KDD2018][[__PDF__]](https://arxiv.org/pdf/1805.10727.pdf)

* [**exact-K recommendation**] Exact-K Recommendation via Maximal Clique Optimization [KDD 2019][[__PDF__]](https://arxiv.org/pdf/1905.07089.pdf)
* [**Explain**]A Capsule Network for Recommendation and Explaining What You Like and Dislike [SIGIR2019][[__PDF__]](https://arxiv.org/pdf/1907.00687.pdf)[[__code__]](https://github.com/WHUIR/CARP)

* [**CTR**] Privileged Features Distillation for E-Commerce Recommendations [Woodstock ’18][[__PDF__]](https://arxiv.org/pdf/1907.05171.pdf)
* [**CTR**] Representation Learning-Assisted Click-Through Rate Prediction [IJCAI 2019] [[__PDF__]](https://arxiv.org/abs/1906.04365)

* [**CTR**] Deep Session Interest Network for Click-Through Rate Prediction  [IJCAI 2019] [[__PDF__]](https://arxiv.org/abs/1905.06482) 

* [**CTR**]  Deep Spatio-Temporal Neural Networks for Click-Through Rate Prediction] [KDD2019] [[__PDF__]](https://arxiv.org/abs/1906.03776)  [[__code__]](https://github.com/oywtece/dstn)

* [**CTR**] Graph Intention Network for Click-through Rate Prediction in Sponsored Search  [SIGIR2019] [[__PDF__]](https://dl.acm.org/citation.cfm?id=3331283)
* [**CTR**] Learning Piece-wise Linear Models from Large Scale Data for Ad Click Prediction [MLR][[__PDF__]](https://arxiv.org/pdf/1704.05194)
* [**CTR**] Deep Interest Evolution Network for Click-Through Rate Prediction [AAAI2019][[__PDF__]](https://arxiv.org/pdf/1809.03672.pdf)
* [**CTR**] Practice on Long Sequential User Behavior Modeling for Click-Through Rate Prediction[KDD2019] [[__PDF__]](https://arxiv.org/pdf/1905.09248.pdf)[[__code__]](https://github.com/UIC-Paper/MIMN)
* [**CTR**] Behavior Sequence Transformer for E-commerce Recommendation in Alibaba [[__PDF__]](https://arxiv.org/pdf/1905.06874.pdf)
* [**CVR**] Entire Space Multi-Task Model: An E ective Approach for Estimating Post-Click Conversion Rate [SIGIR2018][[__PDF__]](https://arxiv.org/pdf/1804.07931.pdf)
* [**CTR**] Lifelong Sequential Modeling with Personalized Memorization for User Response Prediction [SIGIR2019] [[PDF]](https://arxiv.org/pdf/1905.00758.pdf) [[code]](https://github.com/alimamarankgroup/HPMN)
* [**CTR**] Search-based User Interest Modeling with Lifelong Sequential Behavior Data for Click-Through Rate Prediction[[Interpretation]](https://mp.weixin.qq.com/s/iK32hIwjfQbaAwtb48bpyQ)


# GNN based Recommender Systems
An index of recommendation algorithms that are based on Graph Neural Networks.

Our survey **A Survey of Graph Neural Networks for Recommender Systems: Challenges, Methods, and Directions** is accepted by ACM Transactions on Recommender Systems.
A preprint is available on arxiv: [link](https://arxiv.org/pdf/2109.12843v2.pdf)

Please cite our survey paper if this index is helpful.
```
@article{gao2022survey,
  title={A Survey of Graph Neural Networks for Recommender Systems: Challenges, Methods, and Directions},
  author={Gao, Chen and Zheng, Yu and Li, Nian and Li, Yinfeng and Qin, Yingrong and Piao, Jinghua and Quan, Yuhan and Chang, Jianxin and Jin, Depeng and He, Xiangnan and Li, Yong},
  journal={ACM Transactions on Recommender Systems (TORS)},
  year={2022}
}
```
```
Gao, C., Zheng, Y., Li, N., Li, Y., Qin, Y., Piao, J., Quan, Y., Chang, J., Jin, D., He, X., & Li, Y. (2022). A Survey of Graph Neural Networks for Recommender Systems: Challenges, Methods, and Directions. ACM Transactions on Recommender Systems (TORS).
```


## Recommendation Stages
### Matching
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| GCMC | [Berg, R. V. D., Kipf, T. N., & Welling, M. (2017). Graph convolutional matrix completion. _arXiv preprint arXiv:1706.02263_.](https://arxiv.org/pdf/1706.02263.pdf) | arxiv | 2017 | [Python](https://paperswithcode.com/paper/graph-convolutional-matrix-completion) |
| Pin-Sage | [Ying, R., He, R., Chen, K., Eksombatchai, P., Hamilton, W. L., & Leskovec, J. (2018, July). Graph convolutional neural networks for web-scale recommender systems. In Proceedings of the 24th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining (pp. 974-983).](https://arxiv.org/pdf/1806.01973) | KDD | 2018 | [Python](https://paperswithcode.com/paper/graph-convolutional-neural-networks-for-web) |
| NGCF | [Wang, X., He, X., Wang, M., Feng, F., & Chua, T. S. (2019, July). Neural graph collaborative filtering. In _Proceedings of the 42nd international ACM SIGIR conference on Research and development in Information Retrieval_ (pp. 165-174).](https://arxiv.org/pdf/1905.08108.pdf) | SIGIR | 2019 | [Python](https://paperswithcode.com/paper/neural-graph-collaborative-filtering) |
| LightGCN | [He, X., Deng, K., Wang, X., Li, Y., Zhang, Y., & Wang, M. (2020, July). Lightgcn: Simplifying and powering graph convolution network for recommendation. In _Proceedings of the 43rd International ACM SIGIR conference on research and development in Information Retrieval_ (pp. 639-648).](https://arxiv.org/pdf/2002.02126.pdf) | SIGIR | 2020 | [Python](https://paperswithcode.com/paper/lightgcn-simplifying-and-powering-graph) |
| NIA-GCN | [Sun, J., Zhang, Y., Guo, W., Guo, H., Tang, R., He, X., ... & Coates, M. (2020, July). Neighbor interaction aware graph convolution networks for recommendation. In Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval (pp. 1289-1298).](https://dl.acm.org/doi/abs/10.1145/3397271.3401123) | SIGIR | 2020 | NA |
| DGCF | [Wang, X., Jin, H., Zhang, A., He, X., Xu, T., & Chua, T. S. (2020, July). Disentangled graph collaborative filtering. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 1001-1010).](https://arxiv.org/pdf/2007.01764) | SIGIR | 2020 | [Python](https://paperswithcode.com/paper/disentangled-graph-collaborative-filtering) |
| IMP-GCN | [Liu, F., Cheng, Z., Zhu, L., Gao, Z., & Nie, L. (2021, April). Interest-aware message-passing gcn for recommendation. In Proceedings of the Web Conference 2021 (pp. 1296-1305).](https://arxiv.org/pdf/2102.10044.pdf) | WWW | 2021 | [Python](https://github.com/liufancs/IMP_GCN) |
| SGL | [Wu, J., Wang, X., Feng, F., He, X., Chen, L., Lian, J., & Xie, X. (2021, July). Self-supervised graph learning for recommendation. In _Proceedings of the 44th International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 726-735).](https://arxiv.org/pdf/2010.10783) | SIGIR | 2021 | [Python](https://github.com/wujcan/SGL) |
| LT-OCF | [Choi, J., Jeon, J., & Park, N. (2021). LT-OCF: Learnable-Time ODE-based Collaborative Filtering. In _Proceedings of the 30th ACM International Conference on Information and Knowledge Management_ (pp. 251-260).](https://dl.acm.org/doi/10.1145/3459637.3482449) | CIKM | 2021 | [Python](https://github.com/jeongwhanchoi/LT-OCF) |
| HMLET | [Kong, T., Kim, T., Jeon, J., Choi, J., Lee, Y-C.,Park, N., & Kim, S-W. (2022). Linear, or Non-Linear, That is the Question! In _Proceedings of the 15th ACM International Web Search and Data Mining Conference_ (pp. 517-525).](https://dl.acm.org/doi/abs/10.1145/3488560.3498501) | WSDM | 2022 | [Python](https://github.com/jeongwhanchoi/HMLET) | 
| HS-GCN | [Liu, H., Wei, Y., Yin, J., & Nie, L. (2022). HS-GCN: Hamming Spatial Graph Convolutional Networks for Recommendation. IEEE Transactions on Knowledge and Data Engineering.](https://ieeexplore.ieee.org/document/9732648) | TKDE | 2022 | [Python](https://github.com/hanliu95/HS-GCN) |
| LGCN | [Yu, W., Zhang, Z., & Qin, Z. (2022). Low-pass Graph Convolutional Network for Recommendation.](https://www.aaai.org/AAAI22Papers/AAAI-3643.WenhuiY.pdf) | AAAI | 2022 | [Python](https://github.com/Wenhui-Yu/LCFN) |

### Ranking
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| Fi-GNN | [Li, Z., Cui, Z., Wu, S., Zhang, X., & Wang, L. (2019, November). Fi-gnn: Modeling feature interactions via graph neural networks for ctr prediction. In _Proceedings of the 28th ACM International Conference on Information and Knowledge Management_ (pp. 539-548).](https://arxiv.org/pdf/1910.05552.pdf) | CIKM | 2019 | [Python](https://paperswithcode.com/paper/fi-gnn-modeling-feature-interactions-via) |
| PUP | [Zheng, Y., Gao, C., He, X., Li, Y., & Jin, D. (2020, April). Price-aware recommendation with graph convolutional networks. In _2020 IEEE 36th International Conference on Data Engineering (ICDE)_ (pp. 133-144). IEEE.](https://arxiv.org/pdf/2003.03975.pdf) | ICDE | 2020 | [Python](https://github.com/DavyMorgan/ICDE20-PUP) |
|A2-GCN | [Liu, F., Cheng, Z., Zhu, L., Liu, C., & Nie, L. (2020). A2-GCN: An attribute-aware attentive GCN model for recommendation. IEEE Transactions on Knowledge and Data Engineering.](https://arxiv.org/pdf/2003.09086.pdf) | TKDE | 2020 | NA |
| L<sub>0</sub>-SIGN | [Su, Y., Zhang, R., Erfani, S., & Xu, Z. (2021, May). Detecting Beneficial Feature Interactions for Recommender Systems. In _Proceedings of the 34th AAAI Conference on Artificial Intelligence (AAAI)_.](https://arxiv.org/pdf/2008.00404.pdf) | AAAI | 2021 | [Python](https://github.com/ruizhang-ai/SIGN-Detecting-Beneficial-Feature-Interactions-for-Recommender-Systems) |
| DG-ENN | [Guo, W., Su, R., Tan, R., Guo, H., Zhang, Y., Liu, Z., ... & He, X. (2021). Dual Graph enhanced Embedding Neural Network for CTRPrediction. _arXiv preprint arXiv:2106.00314_.](https://arxiv.org/pdf/2106.00314.pdf) | KDD | 2021 | NA |
| SHCF | [Li, C., Hu, L., Shi, C., Song, G., & Lu, Y. (2021). Sequence-aware Heterogeneous Graph Neural Collaborative Filtering. In _Proceedings of the 2021 SIAM International Conference on Data Mining (SDM)_ (pp. 64-72). Society for Industrial and Applied Mathematics.](http://www.shichuan.org/doc/98.pdf) | SDM | 2021 | [Python](http://www.shichuan.org/dataset/SHCF.zip) |
| GCM | [Wu, J., He, X., Wang, X., Wang, Q., Chen, W., Lian, J., & Xie, X. (2020). Graph Convolution Machine for Context-aware Recommender System. _arXiv preprint arXiv:2001.11402_.](https://arxiv.org/pdf/2001.11402.pdf) | Frontiers of Computer Science | 2021 | [Python](https://github.com/wujcan/GCM) |
| TGIN | [Jiang, W., Jiao, Y., Wang, Q., Liang, C., Guo, L., Zhang, Y., ... & Zhu, Y. (2022, February). Triangle Graph Interest Network for Click-through Rate Prediction. In Proceedings of the Fifteenth ACM International Conference on Web Search and Data Mining (pp. 401-409).](https://arxiv.org/pdf/2202.02698.pdf) | WSDM | 2022 | [Python](https://github.com/alibaba/tgin) |

### Re-ranking
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| IRGPR | [Liu, W., Liu, Q., Tang, R., Chen, J., He, X., & Heng, P. A. (2020, October). Personalized Re-ranking with Item Relationships for E-commerce. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 925-934).](https://dl.acm.org/doi/abs/10.1145/3340531.3412332) | CIKM | 2020 | NA |

## Recommendation Scenarios
### Social Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| DiffNet | [Wu, L., Sun, P., Fu, Y., Hong, R., Wang, X., & Wang, M. (2019, July). A neural influence diffusion model for social recommendation. In _Proceedings of the 42nd international ACM SIGIR conference on research and development in information retrieval_ (pp. 235-244).](https://arxiv.org/pdf/1904.10322) | SIGIR | 2019 | [Python](https://paperswithcode.com/paper/a-neural-influence-diffusion-model-for-social) |
| GraphRec | [Fan, W., Ma, Y., Li, Q., He, Y., Zhao, E., Tang, J., & Yin, D. (2019, May). Graph neural networks for social recommendation. In _The World Wide Web Conference_ (pp. 417-426).](https://arxiv.org/pdf/1902.07243) | WWW | 2019 | [Python](https://paperswithcode.com/paper/graph-neural-networks-for-social) |
| DANSER | [Wu, Q., Zhang, H., Gao, X., He, P., Weng, P., Gao, H., & Chen, G. (2019, May). Dual graph attention networks for deep latent representation of multifaceted social effects in recommender systems. In _The World Wide Web Conference_ (pp. 2091-2102).](https://arxiv.org/pdf/1903.10433) | WWW | 2019 | [Python](https://github.com/qitianwu/DANSER-WWW-19) |
| DGRec | [Song, W., Xiao, Z., Wang, Y., Charlin, L., Zhang, M., & Tang, J. (2019, January). Session-based social recommendation via dynamic graph attention networks. In _Proceedings of the Twelfth ACM international conference on web search and data mining_ (pp. 555-563).](https://arxiv.org/pdf/1902.09362) | WSDM | 2019 | [Python](https://github.com/DeepGraphLearning/RecommenderSystems) |
| HGP | [Kim, K. M., Kwak, D., Kwak, H., Park, Y. J., Sim, S., Cho, J. H., ... & Ha, J. W. (2019). Tripartite heterogeneous graph propagation for large-scale social recommendation. _arXiv preprint arXiv:1908.02569_.](https://arxiv.org/pdf/1908.02569) | RecSys | 2019 | NA |
| DiffNet++ | [Wu, L., Li, J., Sun, P., Hong, R., Ge, Y., & Wang, M. (2020). Diffnet++: A neural influence and interest diffusion network for social recommendation. IEEE Transactions on Knowledge and Data Engineering.](https://arxiv.org/pdf/2002.00844.pdf) | TKDE | 2020 | [Python](https://paperswithcode.com/paper/diffnet-a-neural-influence-and-interest)
| MHCN | [Yu, J., Yin, H., Li, J., Wang, Q., Hung, N. Q. V., & Zhang, X. (2021, April). Self-Supervised Multi-Channel Hypergraph Convolutional Network for Social Recommendation. In _Proceedings of the Web Conference 2021_ (pp. 413-424).](https://arxiv.org/pdf/2101.06448) | WWW | 2021 | [Python](https://github.com/Coder-Yu/QRec) |
| SEPT | [Yu, J., Yin, H., Gao, M., Xia, X., Zhang, X., & Hung, N. Q. V. (2021). Socially-Aware Self-Supervised Tri-Training for Recommendation. _arXiv preprint arXiv:2106.03569_.](https://arxiv.org/pdf/2106.03569) | KDD | 2021 | [Python](https://github.com/Coder-Yu/QRec) |
| GBGCN | [Zhang, J., Gao, C., Jin, D., & Li, Y. (2021, April). Group-Buying Recommendation for Social E-Commerce. In _2021 IEEE 37th International Conference on Data Engineering (ICDE)_ (pp. 1536-1547). IEEE.](https://arxiv.org/pdf/2010.06848) | ICDE | 2021 | [Python](https://github.com/Sweetnow/group-buying-recommendation) |
| KCGN | [Huang, C., Xu, H., Xu, Y., Dai, P., Xia, L., Lu, M., ... & Ye, Y. (2021, January). Knowledge-aware coupled graph neural network for social recommendation. In _AAAI Conference on Artificial Intelligence (AAAI)_.](https://www.aaai.org/AAAI21Papers/AAAI-9069.HuangC.pdf) | AAAI | 2021 | [Python](https://github.com/xhcdream/KCGN) |
| DiffNetLG | [Song, C., Wang, B., Jiang, Q., Zhang, Y., He, R., & Hou, Y. (2021, July). Social Recommendation with Implicit Social Influence. In _Proceedings of the 44th International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 1788-1792).](https://dl.acm.org/doi/abs/10.1145/3404835.3463043) | SIGIR | 2021 | NA |
| RecoGCN | [Xu, F., Lian, J., Han, Z., Li, Y., Xu, Y., & Xie, X. (2019, November). Relation-aware graph convolutional networks for agent-initiated social e-commerce recommendation. In _Proceedings of the 28th ACM international conference on information and knowledge management_ (pp. 529-538).](https://dl.acm.org/doi/10.1145/3357384.3357924) | CIKM | 2019 | [Python](https://github.com/xfl15/RecoGCN) |
| GAT-NSR | [Mu, N., Zha, D., He, Y., & Tang, Z. (2019, November). Graph attention networks for neural social recommendation. In _2019 IEEE 31st International Conference on Tools with Artificial Intelligence (ICTAI)_ (pp. 1320-1327). IEEE.](https://ieeexplore.ieee.org/abstract/document/8995280) | ICTAI | 2019 | NA |
| SR-HGNN | [Xu, H., Huang, C., Xu, Y., Xia, L., Xing, H., & Yin, D. (2020, November). Global context enhanced social recommendation with hierarchical graph neural networks. In _2020 IEEE International Conference on Data Mining (ICDM)_ (pp. 701-710). IEEE.](https://ieeexplore.ieee.org/abstract/document/9338365) | ICDM | 2020 | [Python](https://github.com/xhcdream/SR-HGNN) |
| TGRec | [Bai, T., Zhang, Y., Wu, B., & Nie, J. Y. (2020, December). Temporal Graph Neural Networks for Social Recommendation. In _2020 IEEE International Conference on Big Data (Big Data)_ (pp. 898-903). IEEE.](https://ieeexplore.ieee.org/abstract/document/9378444) | ICBD | 2020 | NA |
| ESRF | [Yu, J., Yin, H., Li, J., Gao, M., Huang, Z., & Cui, L. (2020). Enhance social recommendation with adversarial graph convolutional networks. _IEEE Transactions on Knowledge and Data Engineering_.](https://arxiv.org/pdf/2004.02340) | TKDE | 2020 | [Python](https://github.com/Coder-Yu/QRec) |
| HOSR | [Liu, Y., Liang, C., He, X., Peng, J., Zheng, Z., & Tang, J. (2020). Modelling high-order social relations for item recommendation. _IEEE Transactions on Knowledge and Data Engineering_.](https://arxiv.org/pdf/2003.10149) | TKDE | 2020 | NA |
| GNN-SoR | [Guo, Z., & Wang, H. (2020). A deep graph neural network-based mechanism for social recommendations. _IEEE Transactions on Industrial Informatics_, _17_(4), 2776-2783.](https://ieeexplore.ieee.org/abstract/document/9063418) | TII | 2020 | NA |
| ASR | [Luo, D., Bian, Y., Zhang, X., & Huan, J. (2020). Attentive Social Recommendation: Towards User And Item Diversities. _arXiv preprint arXiv:2011.04797_.](https://arxiv.org/pdf/2011.04797) | arxiv | 2020 | [Python](https://github.com/flyingdoog/ASR) |

### Sequential Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| ISSR | [Liu, F., Liu, W., Li, X., & Ye, Y. (2020). Inter-sequence Enhanced Framework for Personalized Sequential Recommendation. _arXiv preprint arXiv:2004.12118_.](https://arxiv.org/pdf/2004.12118) | AAAI | 2020 | NA |
| MA-GNN | [Ma, C., Ma, L., Zhang, Y., Sun, J., Liu, X., & Coates, M. (2020, April). Memory augmented graph neural networks for sequential recommendation. In _Proceedings of the AAAI Conference on Artificial Intelligence_ (Vol. 34, No. 04, pp. 5045-5052).](https://ojs.aaai.org/index.php/AAAI/article/download/5945/5801) | AAAI | 2020 | NA |
| STP-UDGAT | [Lim, N., Hooi, B., Ng, S. K., Wang, X., Goh, Y. L., Weng, R., & Varadarajan, J. (2020, October). STP-UDGAT: Spatial-Temporal-Preference User Dimensional Graph Attention Network for Next POI Recommendation. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 845-854).](https://arxiv.org/pdf/2010.07024) | CIKM | 2020 | NA |
| GPR | [Chang, B., Jang, G., Kim, S., & Kang, J. (2020, October). Learning graph-based geographical latent representation for point-of-interest recommendation. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 135-144).](https://dl.acm.org/doi/abs/10.1145/3340531.3411905) | CIKM | 2020 | NA |
| GES-SASRec | [Zhu, T., Sun, L., & Chen, G. (2021). Graph-based Embedding Smoothing for Sequential Recommendation. _IEEE Transactions on Knowledge and Data Engineering_.](https://ieeexplore.ieee.org/abstract/document/9405450/) | TKDE | 2021 | [Python](https://github.com/zhuty16/GES) |
| RetaGNN | [Hsu, C., & Li, C. T. (2021, April). RetaGNN: Relational Temporal Attentive Graph Neural Networks for Holistic Sequential Recommendation. In _Proceedings of the Web Conference 2021_ (pp. 2968-2979).](https://arxiv.org/pdf/2101.12457) | WWW | 2021 | [Python](https://github.com/retagnn/RetaGNN) |
| TGSRec | [Fan, Z., Liu, Z., Zhang, J., Xiong, Y., Zheng, L., & Yu, P. S. (2021). Continuous-Time Sequential Recommendation with Temporal Graph Collaborative Transformer. _arXiv preprint arXiv:2108.06625_.](https://arxiv.org/pdf/2108.06625) | CIKM | 2021 | [Python](https://github.com/DyGRec/TGSRec) |
| SGRec | [Li, Y., Chen, T., Yin, H., & Huang, Z. (2021). Discovering Collaborative Signals for Next POI Recommendation with Iterative Seq2Graph Augmentation. _arXiv preprint arXiv:2106.15814_.](https://arxiv.org/pdf/2106.15814) | IJCAI | 2021 | NA |
| SURGE | [Chang, J., Gao, C., Zheng, Y., Hui, Y., Niu, Y., Song, Y., ... & Li, Y. (2021, July). Sequential Recommendation with Graph Neural Networks. In _Proceedings of the 44th International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 378-387).](https://arxiv.org/pdf/2106.14226) | SIGIR | 2021 | [Python](https://github.com/tsinghua-fib-lab/SIGIR21-SURGE) |
| GME | [Xie, M., Yin, H., Xu, F., Wang, H., & Zhou, X. (2016, November). Graph-based metric embedding for next poi recommendation. In _International Conference on Web Information Systems Engineering_ (pp. 207-222). Springer, Cham.](http://net.pku.edu.cn/daim/hongzhi.yin/papers/WISE-2016.pdf) | WISE | 2016 | NA |
| Wang _et al._ | [Wang, B., & Cai, W. (2020). Knowledge-enhanced graph neural networks for sequential recommendation. _Information_, _11_(8), 388.](https://www.mdpi.com/2078-2489/11/8/388/pdf) | Information | 2020 | NA |
| DGSR | [Zhang, M., Wu, S., Yu, X., & Wang, L. (2021). Dynamic Graph Neural Networks for Sequential Recommendation. _arXiv preprint arXiv:2104.07368_.](https://arxiv.org/pdf/2104.07368) | arxiv | 2021 | NA |

### Session Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| SR-GNN | [Wu, S., Tang, Y., Zhu, Y., Wang, L., Xie, X., & Tan, T. (2019, July). Session-based recommendation with graph neural networks. In _Proceedings of the AAAI Conference on Artificial Intelligence_ (Vol. 33, No. 01, pp. 346-353).](https://ojs.aaai.org/index.php/AAAI/article/view/3804/3682) | AAAI | 2019 | [Python](https://paperswithcode.com/paper/session-based-recommendation-with-graph) |
| GC-SAN | [Xu, C., Zhao, P., Liu, Y., Sheng, V. S., Xu, J., Zhuang, F., ... & Zhou, X. (2019, August). Graph Contextualized Self-Attention Network for Session-based Recommendation. In _IJCAI_ (Vol. 19, pp. 3940-3946).](https://www.ijcai.org/proceedings/2019/0547.pdf) | IJCAI | 2019 | [Python](https://github.com/RUCAIBox/RecBole/blob/master/recbole/model/sequential_recommender/gcsan.py) |
| TA-GNN | [Yu, F., Zhu, Y., Liu, Q., Wu, S., Wang, L., & Tan, T. (2020, July). TAGNN: Target attentive graph neural networks for session-based recommendation. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 1921-1924).](https://arxiv.org/pdf/2005.02844) | SIGIR | 2020 | [Python](https://github.com/CRIPAC-DIG/TAGNN) |
| MGNN-SPred | [Wang, W., Zhang, W., Liu, S., Liu, Q., Zhang, B., Lin, L., & Zha, H. (2020, April). Beyond clicks: Modeling multi-relational item graph for session-based target behavior prediction. In _Proceedings of The Web Conference 2020_ (pp. 3056-3062).](https://arxiv.org/pdf/2002.07993) | WWW | 2020 | [Python](https://github.com/Autumn945/MGNN-SPred) |
| LESSR | [Chen, T., & Wong, R. C. W. (2020, August). Handling information loss of graph neural networks for session-based recommendation. In Proceedings of the 26th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining (pp. 1172-1180).](http://home.cse.ust.hk/~raywong/paper/kdd20-informationLoss-GNN.pdf) | KDD | 2020 | [Python](https://github.com/twchen/lessr) |
| MKM-SR | [Meng, W., Yang, D., & Xiao, Y. (2020, July). Incorporating user micro-behaviors and item knowledge into multi-task learning for session-based recommendation. In Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval (pp. 1091-1100).](https://arxiv.org/pdf/2006.06922) | SIGIR | 2020 | [Python](https://github.com/ciecus/MKM-SR) |
| GAG | [Qiu, R., Yin, H., Huang, Z., & Chen, T. (2020, July). Gag: Global attributed graph neural network for streaming session-based recommendation. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 669-678).](https://arxiv.org/pdf/2007.02747) | SIGIR | 2020 | [Python](https://github.com/RuihongQiu/GAG) |
| GCE-GNN | [Wang, Z., Wei, W., Cong, G., Li, X. L., Mao, X. L., & Qiu, M. (2020, July). Global context enhanced graph neural networks for session-based recommendation. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 169-178).](https://arxiv.org/pdf/2106.05081) | SIGIR | 2020 | [Python](https://github.com/CCIIPLab/GCE-GNN) |
| SGNN-HN | [Pan, Z., Cai, F., Chen, W., Chen, H., & de Rijke, M. (2020, October). Star graph neural networks for session-based recommendation. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 1195-1204).](https://irlab.science.uva.nl/wp-content/papercite-data/pdf/pan-2020-star.pdf) | CIKM | 2020 | NA |
| DHCN | [Xia, X., Yin, H., Yu, J., Wang, Q., Cui, L., & Zhang, X. (2020). Self-supervised hypergraph convolutional networks for session-based recommendation. _arXiv preprint arXiv:2012.06852_.](https://ojs.aaai.org/index.php/AAAI/article/view/16578) | AAAI | 2021 | [Python](https://github.com/xiaxin1998/DHCN) |
| SHARE | [Wang, J., Ding, K., Zhu, Z., & Caverlee, J. (2021). Session-based Recommendation with Hypergraph Attention Networks. In _Proceedings of the 2021 SIAM International Conference on Data Mining (SDM)_ (pp. 82-90). Society for Industrial and Applied Mathematics.](https://epubs.siam.org/doi/pdf/10.1137/1.9781611976700.10) | SDM | 2021 | NA |
| SERec | [Chen, T., & Wong, R. C. W. (2021, March). An Efficient and Effective Framework for Session-based Social Recommendation. In Proceedings of the 14th ACM International Conference on Web Search and Data Mining (pp. 400-408).](http://www.cse.ust.hk/~raywong/paper/wsdm21-SEFrame.pdf) | WSDM | 2021 | [Python](https://github.com/twchen/SEFrame) |
| COTREC | [Xia, X., Yin, H., Yu, J., Shao, Y., & Cui, L. (2021). Self-Supervised Graph Co-Training for Session-based Recommendation. arXiv preprint arXiv:2108.10560.](https://arxiv.org/pdf/2108.10560) | CIKM | 2021 | [Python](https://github.com/xiaxin1998/COTREC) |
| DAT-MDI | [Chen, C., Guo, J., & Song, B. (2021, July). Dual Attention Transfer in Session-based Recommendation with Multi-dimensional Integration. In Proceedings of the 44th International ACM SIGIR Conference on Research and Development in Information Retrieval (pp. 869-878).](https://dl.acm.org/doi/abs/10.1145/3404835.3462866) | SIGIR | 2021 | NA |
| TASRec | [Zhou, H., Tan, Q., Huang, X., Zhou, K., & Wang, X. (2021). Temporal Augmented Graph Neural Networks for Session-Based Recommendations.](https://www4.comp.polyu.edu.hk/~xiaohuang/docs/Huachi_sigir2021.pdf) | SIGIR | 2021 | NA |
| G<sup>3</sup>SR | [Deng, Z. H., Wang, C. D., Huang, L., Lai, J. H., & Philip, S. Y. (2022). G^ 3SR: Global Graph Guided Session-Based Recommendation. IEEE Transactions on Neural Networks and Learning Systems.](https://arxiv.org/pdf/2203.06467.pdf) | TNNLS | 2022 | NA |
| HG-GNN | [Pang, Y., Wu, L., Shen, Q., Zhang, Y., Wei, Z., Xu, F., ... & Pei, J. (2022, February). Heterogeneous global graph neural networks for personalized session-based recommendation. In Proceedings of the Fifteenth ACM International Conference on Web Search and Data Mining (pp. 775-783).](https://arxiv.org/pdf/2107.03813.pdf) | WSDM | 2022 | [Python](https://github.com/0215Arthur/HG-GNN) |
| CGL | [Pan, Z., Cai, F., Chen, W., Chen, C., & Chen, H. (2022). Collaborative Graph Learning for Session-based Recommendation. ACM Transactions on Information Systems (TOIS), 40(4), 1-26.](https://dl.acm.org/doi/10.1145/3490479) | TOIS | 2022 | NA |
| CAGE | [Sheu, H. S., & Li, S. (2020, September). Context-aware graph embedding for session-based news recommendation. In Fourteenth ACM conference on recommender systems (pp. 657-662).](https://dl.acm.org/doi/abs/10.1145/3383313.3418477) | RecSys | 2020 | NA |
| A-PGNN | [Zhang, M., Wu, S., Gao, M., Jiang, X., Xu, K., & Wang, L. (2020). Personalized graph neural networks with attention mechanism for session-aware recommendation. IEEE Transactions on Knowledge and Data Engineering.](https://arxiv.org/pdf/1910.08887) | TKDE | 2020 | [Python](https://paperswithcode.com/paper/personalizing-graph-neural-networks-with) |
| DGTN | [Zheng, Y., Liu, S., Li, Z., & Wu, S. (2020, November). DGTN: Dual-channel Graph Transition Network for Session-based Recommendation. In _2020 International Conference on Data Mining Workshops (ICDMW)_ (pp. 236-242). IEEE.](https://arxiv.org/pdf/2009.10002) | ICDMW | 2020 | [Python](https://github.com/kunwuz/DGTN) |
| FGNN | [Qiu, R., Li, J., Huang, Z., & Yin, H. (2019, November). Rethinking the item order in session-based recommendation with graph neural networks. In _Proceedings of the 28th ACM International Conference on Information and Knowledge Management_ (pp. 579-588).](https://arxiv.org/pdf/1911.11942) | CIKM | 2019 | [Python](https://github.com/RuihongQiu/FGNN) |

### Bundle Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| BGCN | [Chang, J., Gao, C., He, X., Jin, D., & Li, Y. (2020, July). Bundle recommendation with graph convolutional networks. In _Proceedings of the 43rd international ACM SIGIR conference on Research and development in Information Retrieval_ (pp. 1673-1676).](https://arxiv.org/pdf/2005.03475) | SIGIR | 2020 | [Python](https://github.com/cjx0525/BGCN) |
| HFGN | [Li, X., Wang, X., He, X., Chen, L., Xiao, J., & Chua, T. S. (2020, July). Hierarchical fashion graph network for personalized outfit recommendation. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 159-168).](https://arxiv.org/pdf/2005.12566) | SIGIR | 2020 | [Python](https://github.com/xcppy/hierarchical_fashion_graph_network) |
| BundleNet | [Deng, Q., Wang, K., Zhao, M., Zou, Z., Wu, R., Tao, J., ... & Chen, L. (2020, October). Personalized Bundle Recommendation in Online Games. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 2381-2388).](https://arxiv.org/pdf/2104.05307) | CIKM | 2020 | NA |
| DPR | [Zheng, Z., Wang, C., Xu, T., Shen, D., Qin, P., Huai, B., ... & Chen, E. (2021, April). Drug Package Recommendation via Interaction-aware Graph Induction. In _Proceedings of the Web Conference 2021_ (pp. 1284-1295).](https://arxiv.org/pdf/2102.03577) | WWW | 2021 | NA |
| DPG | [Zheng, Z., Wang, C., Xu, T., Shen, D., Qin, P., Zhao, X., ... & Chen, E. (2022). Interaction-aware Drug Package Recommendation via Policy Gradient. ACM Transactions on Information Systems (TOIS).](https://dl.acm.org/doi/10.1145/3511020) | TOIS | 2022 | NA |
| MIDGN | [Zhao, S., Wei, W., Zou, D., & Mao, X. (2022). Multi-view intent disentangle graph networks for bundle recommendation. arXiv preprint arXiv:2202.11425.](https://ojs.aaai.org/index.php/AAAI/article/view/20359) | AAAI | 2022 | [Python](https://github.com/Snnzhao/MIDGN) |

### Cross Domain Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| PPGN | [Zhao, C., Li, C., & Fu, C. (2019, November). Cross-domain recommendation via preference propagation graphnet. In _Proceedings of the 28th ACM International Conference on Information and Knowledge Management_ (pp. 2165-2168).](https://dl.acm.org/doi/abs/10.1145/3357384.3358166) | CIKM | 2019 | [Python](https://github.com/WHUIR/PPGN) |
| BiTGCF | [Liu, M., Li, J., Li, G., & Pan, P. (2020, October). Cross Domain Recommendation via Bi-directional Transfer Graph Collaborative Filtering Networks. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 885-894).](https://dl.acm.org/doi/abs/10.1145/3340531.3412012) | CIKM | 2020 | [Python](https://github.com/sunshinelium/Bi-TGCF) |
| DAN | [Wang, B., Zhang, C., Zhang, H., Lyu, X., & Tang, Z. (2020, October). Dual Autoencoder Network with Swap Reconstruction for Cold-Start Recommendation. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 2249-2252).](https://dl.acm.org/doi/abs/10.1145/3340531.3412069) | CIKM | 2020 | NA |
| HeroGRAPH | [Cui, Q., Wei, T., Zhang, Y., & Zhang, Q. (2020). HeroGRAPH: A Heterogeneous Graph Framework for Multi-Target Cross-Domain Recommendation. In _ORSUM@ RecSys_.](http://ceur-ws.org/Vol-2715/paper6.pdf) | RecSys | 2020 | [Python](https://github.com/cuiqiang1990/HeroGRAPH) |
| DAGCN | [Guo, L., Tang, L., Chen, T., Zhu, L., Nguyen, Q. V. H., & Yin, H. (2021). DA-GCN: A Domain-aware Attentive Graph Convolution Network for Shared-account Cross-domain Sequential Recommendation. _arXiv preprint arXiv:2105.03300_.](https://arxiv.org/pdf/2105.03300) | IJCAI | 2021 | NA |

## Recommendation Objectives
### Multi-behavior Recommendation
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| MBGCN | [Jin, B., Gao, C., He, X., Jin, D., & Li, Y. (2020, July). Multi-behavior recommendation with graph convolutional networks. In _Proceedings of the 43rd International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 659-668).](http://staff.ustc.edu.cn/~hexn/papers/sigir20-MBGCN.pdf) | SIGIR | 2020 | [Python](https://github.com/tsinghua-fib-lab/MBGCN) |
| MGNN-SPred | [Wang, W., Zhang, W., Liu, S., Liu, Q., Zhang, B., Lin, L., & Zha, H. (2020, April). Beyond clicks: Modeling multi-relational item graph for session-based target behavior prediction. In _Proceedings of The Web Conference 2020_ (pp. 3056-3062).](https://arxiv.org/pdf/2002.07993) | WWW | 2020 | [Python](https://github.com/Autumn945/MGNN-SPred) |
| MGNN | [Zhang, W., Mao, J., Cao, Y., & Xu, C. (2020, October). Multiplex Graph Neural Networks for Multi-behavior Recommendation. In _Proceedings of the 29th ACM International Conference on Information & Knowledge Management_ (pp. 2313-2316).](https://dl.acm.org/doi/abs/10.1145/3340531.3412119) | CIKM | 2020 | NA |
| LP-MRGNN | [Wang, W., Zhang, W., Liu, S., Liu, Q., Zhang, B., Lin, L., & Zha, H. (2021). Incorporating Link Prediction into Multi-Relational Item Graph Modeling for Session-based Recommendation. _IEEE Transactions on Knowledge and Data Engineering_.](https://ieeexplore.ieee.org/abstract/document/9536374/) | TKDE | 2021 | NA |
| GNMR | [Xia, L., Huang, C., Xu, Y., Dai, P., Lu, M., & Bo, L. (2021, April). Multi-Behavior Enhanced Recommendation with Cross-Interaction Collaborative Relation Modeling. In _2021 IEEE 37th International Conference on Data Engineering (ICDE)_ (pp. 1931-1936). IEEE.](https://ieeexplore.ieee.org/abstract/document/9458929) | ICDE | 2021 | [Python](https://github.com/akaxlh/GNMR) |
| MB-GMN | [Xia, L., Xu, Y., Huang, C., Dai, P., & Bo, L. (2021, July). Graph meta network for multi-behavior recommendation. In _Proceedings of the 44th International ACM SIGIR Conference on Research and Development in Information Retrieval_ (pp. 757-766).](https://dl.acm.org/doi/abs/10.1145/3404835.3462972) | SIGIR | 2021 | [Python](https://github.com/akaxlh/MB-GMN) |
| KHGT | [Xia, L., Huang, C., Xu, Y., Dai, P., Zhang, X., Yang, H., ... & Bo, L. (2021, May). Knowledge-Enhanced Hierarchical Graph Transformer Network for Multi-Behavior Recommendation. In _Proceedings of the AAAI Conference on Artificial Intelligence_ (Vol. 35, No. 5, pp. 4486-4493).](https://www.aaai.org/AAAI21Papers/AAAI-3071.XiaL.pdf) | AAAI | 2021 | [Python](https://github.com/akaxlh/KHGT) |
| GHCF | [Chen, C., Ma, W., Zhang, M., Wang, Z., He, X., Wang, C., ... & Ma, S. (2021, May). Graph Heterogeneous Multi-Relational Recommendation. In _Proceedings of the AAAI Conference on Artificial Intelligence_ (Vol. 35, No. 5, pp. 3958-3966).](https://www.aaai.org/AAAI21Papers/AAAI-615.ChenC.pdf) | AAAI | 2021 | [Python](https://github.com/chenchongthu/GHCF) |
| DMBGN | [Xiao, F., Li, L., Xu, W., Zhao, J., Yang, X., Lang, J., & Wang, H. (2021). DMBGN: Deep Multi-Behavior Graph Networks for Voucher Redemption Rate Prediction. _arXiv preprint arXiv:2106.03356_.](https://arxiv.org/pdf/2106.03356) | KDD | 2021 | [Python](https://github.com/fengtong-xiao/DMBGN) |
| HMG-CR | [Yang, H., Chen, H., Li, L., Yu, P. S., & Xu, G. (2021). Hyper Meta-Path Contrastive Learning for Multi-Behavior Recommendation. _arXiv preprint arXiv:2109.02859_.](https://arxiv.org/pdf/2109.02859) | ICDM | 2021 | [Python](https://github.com/Haoran-Young/HMG-CR) |
| GNNH | [Yu, B., Zhang, R., Chen, W., & Fang, J. (2021). Graph neural network based model for multi-behavior session-based recommendation. _GeoInformatica_, 1-19.](https://link.springer.com/article/10.1007/s10707-021-00439-w) | GeoInformatica | 2021 | NA |

### Diversity
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| V2HT | [Li, M., Gan, T., Liu, M., Cheng, Z., Yin, J., & Nie, L. (2019, November). Long-tail hashtag recommendation for micro-videos with graph convolutional network. In _Proceedings of the 28th ACM International Conference on Information and Knowledge Management_ (pp. 509-518).](https://dl.acm.org/doi/abs/10.1145/3357384.3357912) | CIKM | 2019 | NA |
| BGCF | [Sun, J., Guo, W., Zhang, D., Zhang, Y., Regol, F., Hu, Y., ... & Coates, M. (2020, August). A framework for recommending accurate and diverse items using bayesian graph convolutional neural networks. In _Proceedings of the 26th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining_ (pp. 2030-2039).](https://www.researchgate.net/profile/Jianing-Sun-5/publication/343780326_A_Framework_for_Recommending_Accurate_and_Diverse_Items_Using_Bayesian_Graph_Convolutional_Neural_Networks/links/5f85d507299bf1b53e23724f/A-Framework-for-Recommending-Accurate-and-Diverse-Items-Using-Bayesian-Graph-Convolutional-Neural-Networks.pdf) | KDD | 2020 | [Python](https://gitee.com/mindspore/models/tree/master/official/gnn/bgcf) |
| DGCN | [Zheng, Y., Gao, C., Chen, L., Jin, D., & Li, Y. (2021, April). DGCN: Diversified Recommendation with Graph Convolutional Networks. In _Proceedings of the Web Conference 2021_ (pp. 401-412).](https://arxiv.org/pdf/2108.06952.pdf) | WWW | 2021 | [Python](https://github.com/tsinghua-fib-lab/DGCN) |
| FH-HAT | [Xie, R., Liu, Q., Liu, S., Zhang, Z., Cui, P., Zhang, B., & Lin, L. (2021). Improving Accuracy and Diversity in Matching of Recommendation with Diversified Preference Network. arXiv preprint arXiv:2102.03787.](https://arxiv.org/pdf/2102.03787) | TBD | 2021 | NA |
| Isufi _et al._ | [Isufi, E., Pocchiari, M., & Hanjalic, A. (2021). Accuracy-diversity trade-off in recommender systems via graph convolutions. _Information Processing & Management_, _58_(2), 102459.](https://www.sciencedirect.com/science/article/pii/S0306457320309511) | IPM | 2021 | [Python](https://github.com/esilezz/accdiv-via-graphconv) |

### Explainability
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| RippleNet | [Wang, H., Zhang, F., Wang, J., Zhao, M., Li, W., Xie, X., & Guo, M. (2018, October). Ripplenet: Propagating user preferences on the knowledge graph for recommender systems. In _Proceedings of the 27th ACM International Conference on Information and Knowledge Management_ (pp. 417-426).](https://arxiv.org/pdf/1803.03467) | CIKM | 2018 | [Python](https://paperswithcode.com/paper/ripplenet-propagating-user-preferences-on-the) |
| EIUM | [Huang, X., Fang, Q., Qian, S., Sang, J., Li, Y., & Xu, C. (2019, October). Explainable interaction-driven user modeling over knowledge graph for sequential recommendation. In _Proceedings of the 27th ACM International Conference on Multimedia_ (pp. 548-556).](https://dl.acm.org/doi/abs/10.1145/3343031.3350893) | MM | 2019 | NA |
| KPRN | [Wang, X., Wang, D., Xu, C., He, X., Cao, Y., & Chua, T. S. (2019, July). Explainable reasoning over knowledge graphs for recommendation. In _Proceedings of the AAAI Conference on Artificial Intelligence_ (Vol. 33, No. 01, pp. 5329-5336).](https://ojs.aaai.org/index.php/AAAI/article/view/4470/4348) | AAAI | 2019 | [Python](https://paperswithcode.com/paper/explainable-reasoning-over-knowledge-graphs) |
| RuleRec | [Ma, W., Zhang, M., Cao, Y., Jin, W., Wang, C., Liu, Y., ... & Ren, X. (2019, May). Jointly learning explainable rules for recommendation with knowledge graph. In _The World Wide Web Conference_ (pp. 1210-1221).](https://arxiv.org/pdf/1903.03714) | WWW | 2019 | [Python](https://github.com/THUIR/RuleRec) |
| PGPR | [Xian, Y., Fu, Z., Muthukrishnan, S., De Melo, G., & Zhang, Y. (2019, July). Reinforcement knowledge graph reasoning for explainable recommendation. In _Proceedings of the 42nd international ACM SIGIR conference on research and development in information retrieval_ (pp. 285-294).](https://arxiv.org/pdf/1906.05237) | SIGIR | 2019 | [Python](https://github.com/orcax/PGPR) |
| KGAT | [Wang, X., He, X., Cao, Y., Liu, M., & Chua, T. S. (2019, July). Kgat: Knowledge graph attention network for recommendation. In _Proceedings of the 25th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining_ (pp. 950-958).](https://arxiv.org/pdf/1905.07854) | KDD | 2019 | [Python](https://paperswithcode.com/paper/kgat-knowledge-graph-attention-network-for) |
| TMER | [Chen, H., Li, Y., Sun, X., Xu, G., & Yin, H. (2021, March). Temporal meta-path guided explainable recommendation. In _Proceedings of the 14th ACM International Conference on Web Search and Data Mining_ (pp. 1056-1064).](https://arxiv.org/pdf/2101.01433) | WSDM | 2021 | [Python](https://github.com/Abigale001/TMER) |
| ECFKG | [Bose, A., & Hamilton, W. (2019, May). Compositional fairness constraints for graph embeddings. In _International Conference on Machine Learning_ (pp. 715-724). PMLR.](http://proceedings.mlr.press/v97/bose19a/bose19a.pdf) | ICML | 2019 | [Python](https://github.com/joeybose/Flexible-Fairness-Constraints) |
| HAGERec | [Yang, Z., & Dong, S. (2020). HAGERec: hierarchical attention graph convolutional network incorporating knowledge graph for explainable recommendation. _Knowledge-Based Systems_, _204_, 106194.](https://www.sciencedirect.com/science/article/pii/S0950705120304196) | KBS | 2020 | NA |

### Fairness
| **Name** | **Paper** | **Venue** | **Year** | **Code** |
| --- | --- | --- | --- | --- |
| FairGo | [Wu, L., Chen, L., Shao, P., Hong, R., Wang, X., & Wang, M. (2021, April). Learning Fair Representations for Recommendation: A Graph-based Perspective. In _Proceedings of the Web Conference 2021_ (pp. 2198-2208).](https://arxiv.org/pdf/2102.09140) | WWW | 2021 | [Python](https://github.com/newlei/FairGo) |
| FairGNN | [Dai, E., & Wang, S. (2021, March). Say no to the discrimination: Learning fair graph neural networks with limited sensitive attribute information. In _Proceedings of the 14th ACM International Conference on Web Search and Data Mining_ (pp. 680-688).](https://arxiv.org/pdf/2009.01454) | WSDM | 2021 | [Python](https://github.com/EnyanDai/FairGNN) |
| Fairwalk | [Rahman, T., Surma, B., Backes, M., & Zhang, Y. (2019). Fairwalk: Towards fair graph embedding.](https://publications.cispa.saarland/2933/1/IJCAI19.pdf) | IJCAI | 2019 | [Python](https://paperswithcode.com/paper/fairwalk-towards-fair-graph-embedding) |
| CFCGE | [Bose, A., & Hamilton, W. (2019, May). Compositional fairness constraints for graph embeddings. In _International Conference on Machine Learning_ (pp. 715-724). PMLR.](http://proceedings.mlr.press/v97/bose19a/bose19a.pdf) | ICML | 2019 | [Python](https://github.com/joeybose/Flexible-Fairness-Constraints) |


