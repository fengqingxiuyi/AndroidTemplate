package com.fqxyi.androidtemplatetest.demo.request;

import android.support.annotation.NonNull;

import com.alibaba.fastjson.TypeReference;
import com.showjoy.shop.common.request.SHResponse;
import com.fqxyi.androidtemplatetest.demo.entities.DemoEntity;

public class DemoRequest extends SHGetRequest<DemoEntity> {

    @Override
    protected Class<DemoEntity> getDataClass() {
        return DemoEntity.class;
    }

    @Override
    protected TypeReference<DemoEntity> getDataTypeReference() {
        return null;
    }

    @NonNull
    @Override
    protected String getRequestUrl() {
        return null;
    }

}
