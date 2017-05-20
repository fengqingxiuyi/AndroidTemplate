package ${packageName};

import android.support.annotation.NonNull;

import com.showjoy.shop.R;
import com.showjoy.shop.common.base.BaseActivity;

public class ${activityClass} extends BaseActivity<${viewModelClass}> {

    @NonNull
    @Override
    public ${viewModelClass} getViewModel() {
        return new ${viewModelClass}(this);
    }

    @Override
    public int getContentViewRes() {
        return R.layout.${layoutName};
    }

}
