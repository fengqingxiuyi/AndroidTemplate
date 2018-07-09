<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <include
        android:id="@id/title_bar"
        layout="@layout/commom_title_bar" />

    <com.mamahao.third_library.pulltoreshresh.widget.PullToRefreshXRecycleView
        android:id="@+id/pull_recycler_view"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_marginTop="@dimen/title_bar_height"
        android:orientation="vertical"/>

</FrameLayout>