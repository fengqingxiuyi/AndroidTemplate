package com.fqxyi.androidtemplatetest.demo;

import com.showjoy.shop.common.base.BaseActivity;
import com.showjoy.shop.common.base.BaseViewModel;

public class DemoViewModel extends BaseViewModel<DemoPresenter> {

    public DemoViewModel(BaseActivity activity) {
        super(activity);
    }

    @Override
    public void initView() {

    }

    @Override
    public void initData() {

    }

    @Override
    protected DemoPresenter getPresenter() {
        return new DemoPresenter(this);
    }

}
