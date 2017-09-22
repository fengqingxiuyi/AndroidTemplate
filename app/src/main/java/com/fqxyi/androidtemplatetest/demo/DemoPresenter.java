package com.fqxyi.androidtemplatetest.demo;

import com.showjoy.network.base.BaseRequest;
import com.showjoy.shop.common.base.BasePresenter;
import com.showjoy.shop.common.request.SHResponse;
import com.fqxyi.androidtemplatetest.demo.entities.DemoEntity;
import com.fqxyi.androidtemplatetest.demo.request.DemoRequest;

public class DemoPresenter extends BasePresenter<DemoViewModel, SHResponse<DemoEntity>> {

    public DemoPresenter(DemoViewModel viewModel) {
        super(viewModel);
    }

    @Override
    public BaseRequest getRequest() {
        return new DemoRequest();
    }

    @Override
    public void responseSuccess(SHResponse<DemoEntity> response) {
        if (!response.isSuccess) {
            return;
        }

    }

    @Override
    public void responseError(int error) {
        super.responseError(error);
    }

    @Override
    public boolean requestOnResume() {
        return super.requestOnResume();
    }

    @Override
    public boolean requestOnStart() {
        return super.requestOnStart();
    }

}
