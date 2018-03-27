# DHF1K


===========================================================================
W. Wang, J. Shen, F. Guo, M.-M Cheng and A. Borji, 

Revisiting Video Saliency: A Large-scale Benchmark and a New Model,  

IEEE Conference on Computer Vision and Pattern Recognition (CVPR), 2018  

===========================================================================
Download:
Google disk：https://drive.google.com/open?id=1sW0tf9RQMO4RR7SyKhU8Kmbm4jwkFGpQ

Baidu pan:

===========================================================================

Files:

'video': 1000 videos (videoname.AVI)
'annotation/videoname/maps': continuous saliency maps in '.png' format
'annotation/videoname/fixation': binary eye fixation maps in '.png' format
'annotation/videoname/maps': binary eye fixation maps stored in mat file
'generate_frame.m': used for extracting the frame images from AVI videos. 

Note that please do not change the way of naming frames.

===========================================================================
Dataset splitting:

Training set:   first 600 videos (001.AVI-600.AVI)
Validation set: 100 videos (601.AVI-700.AVI)
Testing set:    300 videos (701.AVI-1000.AVI)

The annotations for the training and val sets are released, but the 
annotations of the testing set are held-out for benchmarking.

===========================================================================
Results submission.

Please orgnize your results in following format:
yourmethod/videoname/framename.png

Note that the frames and framenames should be generated by 'generate_frame.m'.

Then send your results to 'DHF1Kdataset@gmail.com'. 
You can only sumbmit ONCE within One week. 
Please first test your model on the val set or other video saliency dataset.
The response may be more than one week.

If you want to list your results on our web, please send your name, model 
name, paper title, short description of your method and the link of the web
of your project (if have).

===========================================================================
Citation:

@inproceedings{murray2012ava,
  title={Revisiting Video Saliency: A Large-scale Benchmark and a New Model},
  author={Wang, Wenguan and Shen, Jianbing and Guo, Fang and Cheng, Ming-Ming and Borji, Ali},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  year={2018},
}

@article{wang2018deep,
  title={Deep Visual Attention Prediction},
  author={Wang, Wenguan and Shen, Jianbing},
  journal={IEEE Transactions on Image Processing},
  volume={27},
  number={5},
  pages={2368--2378},
  year={2018},
}

If you find our dataset is useful, please cite above papers.

===========================================================================
Code: 

Coming soon.

===========================================================================
Contact Information
Email:
	wenguanwang.ai@gmail.com
	shenjianbing@bit.edu.cn
------------------------------------------------------------------------------------------------