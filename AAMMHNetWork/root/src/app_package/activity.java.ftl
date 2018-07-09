package ${packageName};

import android.text.TextUtils;

import com.mmh.base_library.base.activity.MMHBaseActivity;
import com.mmh.base_library.network.entity.NetBean;
import com.mmh.base_library.network.exception.ErrorBean;
import com.mmh.base_library.utils.MyToast;

import cn.atmobi.base_module.utils.ProgressBarUtils;
import cn.atmobi.mamhao.R;
import ${packageName}.request.contract.${contractClass};
import ${packageName}.request.presenter.${presenterClass};

/**
 * Activity
 */
public class ${activityClass} extends MMHBaseActivity implements ${contractClass}.View {

    ${contractClass}.Presenter presenter;

    @Override
    protected void initView() {
        setContentView(R.layout.${layoutName});

    }

    @Override
    protected void initData() {
        new ${presenterClass}().bind(this, this);

    }

    @Override
    public void mainResponse(NetBean netBean) {

    }

    @Override
    public void error(ErrorBean errorBean) {
        ProgressBarUtils.hideProgressBar(this);
        if (errorBean != null && !TextUtils.isEmpty(errorBean.getError())) {
            MyToast.showToast(errorBean.getError());
        }
    }

    @Override
    public void setPresenter(${contractClass}.Presenter presenter) {
        this.presenter = presenter;
    }

    @Override
    public boolean isAdded() {
        return false;
    }
    
}
