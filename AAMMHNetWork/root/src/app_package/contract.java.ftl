package ${packageName}.contract;

import com.mmh.base_library.base.presenter.ScopedPresenter;
import com.mmh.base_library.base.view.BaseView;
import com.mmh.base_library.network.exception.ErrorBean;

import java.util.Map;

/**
 * Contract
 */
public interface ${contractClass} {

    /**
     * View
     */
    interface View extends BaseView<${contractClass}.Presenter> {

        void testResponse();

        void testError(ErrorBean errorBean);

    }

    /***
     * 逻辑层 操作 接口
     */
    interface Presenter extends ScopedPresenter<${contractClass}.View> {

        void testRequest(Map<String, String> pramMap);

    }

}
