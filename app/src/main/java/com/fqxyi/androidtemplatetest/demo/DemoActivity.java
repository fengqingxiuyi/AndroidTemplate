package com.fqxyi.androidtemplatetest.demo;

import android.support.annotation.NonNull;

import com.showjoy.shop.R;
import com.showjoy.shop.common.base.BaseActivity;

public class DemoActivity extends BaseActivity<DemoViewModel> {

    @NonNull
    @Override
    public DemoViewModel getViewModel() {
        return new DemoViewModel(this);
    }

    @Override
    public int getContentViewRes() {
        return R.layout.demo_activity;
    }

}
