package ${packageName}.request.presenter;

import com.mmh.base_library.base.presenter.BaseAddPresenter;
import com.mmh.base_library.network.entity.MMHReqTag;
import com.mmh.base_library.network.entity.NetBean;
import com.mmh.base_library.network.exception.ErrorBean;
import com.mmh.base_library.network.listener.HttpOnNextListener;

import java.util.Map;

import ${packageName}.request.api.${apiClass};
import ${packageName}.request.bean.${beanClass};
import ${packageName}.request.contract.${contractClass};
import ${packageName}.request.tag.${tagClass};

/**
 * Presenter
 */
public class ${presenterClass} extends BaseAddPresenter<${contractClass}.View> implements ${contractClass}.Presenter, HttpOnNextListener, ${tagClass} {

    @Override
    public void onNext(MMHReqTag reqTag, Object o) {
        if (null == getNullableView())
            return;
        switch (reqTag.getReqId()) {
            case REQUEST_TAG_MAIN:
                getNullableView().mainResponse((List<${beanClass}>) o);
                break;
        }
    }

    @Override
    public void onError(MMHReqTag reqTag, Throwable e, Object o) {
        if (null == getNullableView())
            return;
        switch (reqTag.getReqId()) {
            case REQUEST_TAG_MAIN:
                if (o instanceof ErrorBean) {
                    getNullableView().error((ErrorBean) o);
                } else {
                    getNullableView().error(null);
                }
                break;
        }
    }

    @Override
    public void mainRequest(Map<String, String> pramMap) {
        getBaseModel().simplePost(getContext(), new MMHReqTag(REQUEST_TAG_MAIN), this, new ${apiClass}(), pramMap);
    }

}
