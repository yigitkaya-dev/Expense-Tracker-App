   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    ExpenseTracker   ExpenseTracker.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Expense Tracker��5   	   $	��800��6!   $	��850��6.   .��5      �  � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5	      $��1* �6   �� 5
      $
��1.5* �6   �� 5      $��1* �6   .+�5   
   �� $��Description��6   $��0��6'   $��10,5,0,0q�67   $	��Top=�6I   $
��Bold"�6a   �� 5   
   $��
Amount ($)��6   $��1��6&   $��10,5,0,0q�66   $	��Top=�6H   $
��Bold"�6`   �� 5   
   $��Category��6   $��2��6$   $��10,5,0,0q�64   $	��Top=�6F   $
��Bold"�6^   �� 5   
   -   5        $��txtDescription��5      $	��200��6(   $��25��64   $��0��6@   $��
10,25,10,0q�6P   $	��Top=�6d   $
��Left=�6|   �� 5   
   -   5        $��	txtAmount��5      $	��100��6#   $��25��6/   $��1��6;   $��
10,25,10,0q�6K   $	��Top=�6_   �� 5   
   -   5        $��categoryDropdown��5      $	��150��6+   $��25��67   $��2��6C   $��
10,10,10,0q�6S   $	��Top=�6g   @�5      ��5      Food��6#   ��5      Rent��6#   ��5      	Transport��6(   ��5      Entertainment��6,   ��5       Shopping��6'   ��5!      Misc��6#   5#      �� 5'   
   -   5        $��Add Expense��5'      $	��100��6@   $��30��6L   $��3��6X   $��
10,25,10,0q�6h   $	��Top=�6|   �� 5*   
   -   5        $��lstExpenses��5*      $��10,70,10,10q�6&   $��4��6;    �� View 5+      �� 5,      .P�5-      �� $��Description��6%    �� Width$	 250��6:    �� DisplayMemberBinding 6F   �� *Description+�� 5.      $��
Amount ($)��6%   $	 100��69    6E   �� *Amount+�� 5/      $��Category��6%   $	 150��67    6C   �� *
Category+50      52      53      54      