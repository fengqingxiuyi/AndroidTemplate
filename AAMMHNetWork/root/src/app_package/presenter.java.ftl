package ${packageName}.presenter;

import com.mmh.base_library.base.presenter.BaseAddPresenter;
import com.mmh.base_library.network.entity.MMHReqTag;
import com.mmh.base_library.network.exception.ErrorBean;
import com.mmh.base_library.network.listener.HttpOnNextListener;

import java.util.Map;

import ${packageName}.api.${apiClass};
import ${packageName}.tag.${tagClass};
import ${packageName}.contract.${contractClass};

/**
 * Presenter
 */
public class ${presenterClass} extends BaseAddPresenter<${contractClass}.View> implements ${contractClass}.Presenter , HttpOnNextListener, ${tagClass} {

    @Override
    public void onNext(MMHReqTag reqTag, Object o) {
        if (null == getNullableView())
            return;
        switch (reqTag.getReqId()) {
            case REQUEST_TAG_TEST:
                try {
                    getNullableView().testResponse();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    @Override
    public void onError(MMHReqTag reqTag, Throwable e, Object o) {
        if (null == getNullableView())
            return;
        switch (reqTag.getReqId()) {
            case REQUEST_TAG_TEST:
                if (null != o && o instanceof ErrorBean) {
                    getNullableView().testError((ErrorBean) o);
                }
                break;
        }
    }

    @Override
    public void testRequest(Map<String, String> pramMap) {
        getBaseModel().simplePost(getContext(), new MMHReqTag(REQUEST_TAG_TEST), this, new ${apiClass}(), pramMap);
    }

}
