   M S B A M L   `   `   `  ����?  ;Haru, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Haru.Pages
Haru.Pages  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 6.       Haru.Pages.PageCatalog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Haru.Pages     5      6sys&clr-namespace:System;assembly=mscorlib     6.     N� Title$#  Каталог товаров��5	       � 	Resources 5
         	ImageNull��%R   &	        ��5   
   0,pack://application:,,,/Resources/picture.png��5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��30* �6   �� 5      $
��200* �6   �� 5      $	��30* �6   .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $��2* �6#   �� 5      $��1* �6#   �� 5      $��1* �6#   .+�5      �� $��0��6    �� Orientation$ 
Horizontal=�5      .+�5      �� $��Поиск:��6     tblockSearch#��[ 5       �� 5!      -   5         ��Name$ 
tboxSearch��5!        
tboxSearch#��[ 5"      6>   5#      �� 5$      -   5        $��
cmbSorting��5%      $��1��5$        	cmbSearch#��[ 5&       �� DisplayMemberPath$ ProductName��5'      67   �� 5(      -   5        $��cmbFiltering��5)      $��2��5(      #��[ 5*      $ ProductName��5+      67   5,      �� 5.   
   -   5         ��Name$ ListProducts��5/      $��1��5.      $
��1000��50      $��Disabled=�51      ��52      �� 53      .R�54      � 56      57      ��5:      �� 5;      .R�5<      �� $��1q�6   
���   �._�5>      � $	��950��6   $	��145��5?      ��5@      �� *
ColorBrush+ 5A      �� 5B   "   $��2* �63   �� 5C   "   $��6* �63   �� 5D   "   $��2* �63   .+�5F      �� $��0��6$   $	��150��5H   $   $	��100��5I   $   $��5q�5J   $   ��5G   $   �� *
ImageRes+ �� FallbackValue# [  5J   $   � 5K      $��1��6#    5L   "   �� 5M   &   $��1* �64   �� 5N   &   $��2* �64   �� 5O   &   $��1* �64   �� 5P   &   $��1* �64   .+�5R   "   �� $��0��6,     tblockListView#��[ 5T   ,   ��5S   ,   �� *ProductName+5T   ,   5U      �� 5V      $��2��6(   #��[ 5X   (   ��5W   (   �� *DiscountRes+5X   (   5Y      5Z      5[      5]      �� 5_   
   $��2��6   $ 
Horizontal=�5`      $��Center=�5a      $��Center=�5b      .+�5c      ��  
 btnPag#��[ 6   $��<<��5d      �� 5e      #��[ 6   $��<��5f      �� 5g      -   5        	 ��Name$	 tbPag��5g        
tblockMain#��[ 5h      �� 5i      #��[ 6   $��>��5j      �� 5k      #��[ 6   $��>>��5l      5m      5n      5o      