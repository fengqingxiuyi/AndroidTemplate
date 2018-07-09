package ${packageName};

import android.text.TextUtils;

import com.mmh.base_library.base.activity.MMHBaseActivity;
import com.mmh.base_library.network.exception.ErrorBean;
import com.mmh.base_library.utils.MyToast;

import java.util.HashMap;
import java.util.Map;

import cn.atmobi.base_module.utils.ProgressBarUtils;
import cn.atmobi.base_module.widget.error.OnTipViewClickListener;
import cn.atmobi.base_module.widget.error.TipViewManager;
import cn.atmobi.base_module.widget.error.config.ITipViewConfig;
import cn.atmobi.mamhao.R;
import ${packageName}.request.bean.${beanClass};
import ${packageName}.request.contract.${contractClass};
import ${packageName}.request.presenter.${presenterClass};

/**
 * Activity
 */
public class ${activityClass} extends MMHBaseActivity implements ${contractClass}.View {

    //presenter
    ${contractClass}.Presenter presenter;
    //findView
    
    //error page
    TipViewManager tipViewManager;

    @Override
    protected void initView() {
        setContentView(R.layout.${layoutName});
        initTitleBar();
        //findView

    }

    private void initTitleBar() {
        initTitleBar("页面标题", Constant.DEFAULT_LEFT_BACK, null);
    }

    @Override
    protected void initData() {
        new ${presenterClass}().bind(this, this);
        //
        initTipViewManager();
        startRequest();
    }

    private void initTipViewManager() {
        tipViewManager = new TipViewManager(this);
        tipViewManager.build();
        tipViewManager.setOnTipViewClickListener(new OnTipViewClickListener() {
            @Override
            public void onClickListener(int tipConfig) {
                startRequest();
            }
        });
    }

    private void startRequest() {
        ProgressBarUtils.showProgressBar(this);
        //start request
        Map<String, String> paramMap = new HashMap<>();
        presenter.mainRequest(paramMap);
    }

    @Override
    public void mainResponse(${beanClass} response) {
        ProgressBarUtils.hideProgressBar(this);
        if (tipViewManager != null) {
            tipViewManager.hideTipView();
        }
        if (response == null) {
            if (tipViewManager != null) {
                tipViewManager.showTipView(ITipViewConfig.INetRrrorConfig.NET_ERROR_CONFIG);
            }
            return;
        }
        //

    }

    @Override
    public void error(ErrorBean errorBean) {
        ProgressBarUtils.hideProgressBar(this);
        if (errorBean != null && !TextUtils.isEmpty(errorBean.getError())) {
            MyToast.showToast(errorBean.getError());
        }
        if (tipViewManager != null) {
            tipViewManager.showTipView(ITipViewConfig.INetRrrorConfig.SERVER_ERROR_CONFIG);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (tipViewManager != null) {
            tipViewManager.onDestory();
            tipViewManager = null;
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
