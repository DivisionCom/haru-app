   M S B A M L   `   `   `  ����?  ;Haru, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:HaruHaru  5   	       Haru.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Haru     5   	     � Title$
  Haru��5   	   $	��600��6   $
��1000��6#   $	��600��60   $
��1000��6@   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��30* �6   �� 5      $
��200* �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   ���#dcd5cf.+�5      �� $��Resources/haru_logo.png��6   $	��150��65   5      �� 5   
   $ 
Horizontal=�6   $��Center=�6.   .+�5      ��  	  Title#��[  6Q   ��6   ��  �� ElementName$ frmMain�� �� Path$ Content.Title�6Q   5      �� 5   
   $ Vertical=�6   $��Right=�5      .+�5      �� -   5        $��tblockUserName��5        tblockCurrentUser#��[ 5      �� 5      $ 
Horizontal=�6   .+�5      �� -   5        $��btnBack��5      $��
Назад��5        	btnHeader#��[ 5      �� 5      -   5        $��btnExit��5      $��
Выйти��5      #��[ 5      5      5        � 5"   
   -   5        $��frmMain��5"      $��1��6     � NavigationUIVisibility$ Hidden=�6,   5#      5$      