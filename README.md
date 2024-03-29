# DHF1K

For performance benchmarking, please directly drop emails to 'DHF1Kdataset@gmail.com'.

===========================================================================

[Wenguan Wang](https://sites.google.com/view/wenguanwang), J. Shen, M.-M Cheng and A. Borji, 

[Revisiting Video Saliency: A Large-scale Benchmark and a New Model,](https://www.researchgate.net/publication/329747100_Revisiting_Video_Saliency_A_Large-Scale_Benchmark_and_a_New_Model)  

IEEE Conference on Computer Vision and Pattern Recognition (CVPR), 2018 and

IEEE Transactions on Pattern Analysis and Machine Intelligence (PAMI), 2019

===========================================================================

The code (ACLNet) and dataset (DHF1K with raw gaze records, UCF-sports are new added!) can be downloaded from:

Google disk：https://drive.google.com/open?id=1sW0tf9RQMO4RR7SyKhU8Kmbm4jwkFGpQ

Baidu pan: https://pan.baidu.com/s/110NIlwRIiEOTyqRwYdDnVg

The Hollywood-2 (74.6G, including attention maps) can be downloaded from:

Google disk：https://drive.google.com/drive/folders/1eCNcRSInK7GGNxXF60yeU7LqiRgRKO4r?usp=sharing

Baidu pan: link：https://pan.baidu.com/s/16BIAuaGEDDbbjylJ8zziuA  code：bt3x

Since so many people are interested in the training code, I decide to upload it in above webdisks. Enjoy it.

===========================================================================

Files:

'video': 1000 videos (videoname.AVI)

'annotation/videoname/maps': continuous saliency maps in '.png' format

'annotation/videoname/fixation': binary eye fixation maps in '.png' format

'annotation/videoname/maps': binary eye fixation maps stored in mat file

'generate_frame.m': used for extracting the frame images from AVI videos. 

Please note raw data of individual viewers are stored in 'exportdata_train.rar'.

Note that please do not change the way of naming frames.

===========================================================================

Dataset splitting:

Training set:   first 600 videos (001.AVI-600.AVI)

Validation set: 100 videos (601.AVI-700.AVI)

Testing set:    300 videos (701.AVI-1000.AVI)


The annotations for the training and val sets are released, but the 

annotations of the testing set are held-out for benchmarking.

===========================================================================

The attribute annotation of all the videos "DHF1k_attribute-all" has been uploaded. 

The statistics of the attributes are subjected to this version.

===========================================================================

We have corrected some statistics of our results 
(baseline training setting (iii)) on UCF sports dataset.
Please see our newest version in ArXiv.

===========================================================================

Note that, for Holly-wood2 dataset, we used the split videos 
(each video only contains one shot), instead of the full videos.

===========================================================================

The raw data of gaze record "exportdata_train.rar" has been uploaded.

===========================================================================

For DHF1K dataset, we use following functions to generate continous saliency map:

[x,y]=find(fixations);

densityMap= make_gauss_masks(y,x,[video_res_y,video_res_x]); 

make_gauss_masks.m has been uploaded.

For UCF and Hollywood, I directly use following functions:

densityMap = imfilter(fixations,fspecial('gaussian',150,20),'replicate');

===========================================================================

Results submission.

Please orgnize your results in following format:

yourmethod/videoname/framename.png

Note that the frames and framenames should be generated by 'generate_frame.m'.

Then send your results to 'DHF1Kdataset@gmail.com'. 

You can only sumbmit ONCE within One week. 

Please first test your model on the val set or other video saliency dataset.

The response may be more than one week.

If you want to list your results on [our web](https://mmcheng.net/videosal/), please send your name, model 

name, paper title, short description of your method and the link of the web

of your project (if you have).

===========================================================================

We use

Keras: 2.2.2

tensorflow: 1.10.0

to implement our model. 

===========================================================================

Citation:

	@InProceedings{Wang_2018_CVPR,
	author = {Wang, Wenguan and Shen, Jianbing and Guo, Fang and Cheng, Ming-Ming and Borji, Ali},
	title = {Revisiting Video Saliency: A Large-Scale Benchmark and a New Model},
	booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition},
	year = {2018}
	}
	
	@ARTICLE{Wang_2019_revisitingVS, 
	author={W. {Wang} and J. {Shen} and J. {Xie} and M. {Cheng} and H. {Ling} and A. {Borji}}, 
	journal={IEEE Transactions on Pattern Analysis and Machine Intelligence}, 
	title={Revisiting Video Saliency Prediction in the Deep Learning Era}, 
	year={2019}, 
	}

If you find our dataset is useful, please cite above papers.

===========================================================================

Code (ACLNet): 

You can find the code in google disk:  https://drive.google.com/open?id=1sW0tf9RQMO4RR7SyKhU8Kmbm4jwkFGpQ

===========================================================================

Terms of use:

The dataset and code are licensed under a [Creative Commons Attribution 4.0 License](https://creativecommons.org/licenses/by/4.0/legalcode).

===========================================================================

Contact Information
Email:
	wenguanwang.ai@gmail.com
	
------------------------------------------------------------------------------------------------
