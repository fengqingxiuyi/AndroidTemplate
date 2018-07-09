package ${packageName}.request.contract;

import com.mmh.base_library.base.presenter.ScopedPresenter;
import com.mmh.base_library.base.view.BaseView;
import com.mmh.base_library.network.entity.NetBean;
import com.mmh.base_library.network.exception.ErrorBean;

import java.util.Map;

import ${packageName}.request.bean.${beanClass};

/**
 * Contract
 */
public interface ${contractClass} {

    /**
     * View
     */
    interface View extends BaseView<Presenter> {

        void mainResponse(${beanClass} netBean);

        void error(ErrorBean errorBean);

    }

    /***
     * 逻辑层 操作 接口
     */
    interface Presenter extends ScopedPresenter<View> {

        void mainRequest(Map<String, String> pramMap);

    }

}
