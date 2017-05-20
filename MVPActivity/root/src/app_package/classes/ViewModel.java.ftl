package ${packageName};

import com.showjoy.shop.common.base.BaseActivity;
import com.showjoy.shop.common.base.BaseViewModel;

public class ${viewModelClass} extends BaseViewModel<${presenterClass}> {

    public ${viewModelClass}(BaseActivity activity) {
        super(activity);
    }

    @Override
    public void initView() {

    }

    @Override
    public void initData() {

    }

    @Override
    protected ${presenterClass} getPresenter() {
        return new ${presenterClass}(this);
    }

}
