package ${packageName};

import com.showjoy.network.base.BaseRequest;
import com.showjoy.shop.common.base.BasePresenter;
import com.showjoy.shop.common.request.SHResponse;
import ${packageName}.entities.${entityClass};
import ${packageName}.request.${requestClass};

public class ${presenterClass} extends BasePresenter<${viewModelClass}, SHResponse<${entityClass}>> {

    public ${presenterClass}(${viewModelClass} viewModel) {
        super(viewModel);
    }

    @Override
    public BaseRequest getRequest() {
        return new ${requestClass}();
    }

    @Override
    public void responseSuccess(SHResponse<${entityClass}> response) {
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
