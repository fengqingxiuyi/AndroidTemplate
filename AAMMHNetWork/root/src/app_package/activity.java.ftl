package ${packageName};

import android.os.Bundle;

import cn.atmobi.mamahao.panda.base.BaseActivity;
import ${packageName}.contract.${contractClass};

import com.mmh.base_library.network.exception.ErrorBean;

import ${packageName}.presenter.${presenterClass};
import ${packageName}.tag.${tagClass};

/**
 * Activity
 */
public class ${activityClass} extends BaseActivity implements ${contractClass}.View, ${tagClass} {

    private ${contractClass}.Presenter presenter;

    @Override
    protected void onInitView(Bundle arg0) {
        new ${presenterClass}().bind(activity, this);
    }

    @Override
    public void testResponse() {

    }

    @Override
    public void testError(ErrorBean errorBean) {

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
