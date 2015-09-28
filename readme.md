# openCV のデフォルトの学習機を使って学習をしてみます。
キーワード:
・haar, LBP, HOG

```ruby
$ /usr/local/bin/opencv_createsamples -info positiveImage.txt -vec jiba.vec -num 8
$ /usr/local/bin/opencv_traincascade -data . -vec jiba.vec -bg negativeImage.txt -numPos 8 -numNeg 9 -featureType LBP -mode ALL
```

参考:
OpenCV 2.4.2で分類器を作る
http://shkh.hatenablog.com/entry/2012/11/03/052251

