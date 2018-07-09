package ${packageName};

import android.text.TextUtils;

import com.jcodecraeer.xrecyclerview.XRecyclerView;
import com.mamahao.third_library.pulltoreshresh.library.PullToRefreshBase;
import com.mamahao.third_library.pulltoreshresh.widget.PullToRefreshXRecycleView;
import com.mmh.base_library.base.activity.MMHBaseActivity;
import com.mmh.base_library.network.exception.ErrorBean;
import com.mmh.base_library.utils.MyToast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.atmobi.base_module.constant.Constant;
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
    private PullToRefreshXRecycleView pullRecycleView;
    private XRecyclerView mRecyclerView;
    //error page
    TipViewManager tipViewManager;
    //adapter
    private ${adapterClass} mAdapter;
    //page
    int page = 1;
    //data source
    List<${beanClass}> dataList;

    @Override
    protected void initView() {
        setContentView(R.layout.${layoutName});
        initTitleBar();
        //findView
        pullRecycleView = (PullToRefreshXRecycleView) findViewById(R.id.pull_recycler_view);
    }

    private void initTitleBar() {
        initTitleBar("页面标题", Constant.DEFAULT_LEFT_BACK, null);
    }

    @Override
    protected void initData() {
        new ${presenterClass}().bind(this, this);
        //
        initTipViewManager();
        initRecyclerView();
        initAdapter();
    }

    private void initTipViewManager() {
        tipViewManager = new TipViewManager(this);
        tipViewManager.build();
        tipViewManager.setOnTipViewClickListener(new OnTipViewClickListener() {
            @Override
            public void onClickListener(int tipConfig) {
                page = 1;
                startRequest();
            }
        });
    }

    private void initRecyclerView() {
        pullRecycleView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        pullRecycleView.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener2<XRecyclerView>() {
            @Override
            public void onPullDownToRefresh(PullToRefreshBase<XRecyclerView> refreshView) {
                page = 1;
                startRequest();
            }

            @Override
            public void onPullUpToRefresh(PullToRefreshBase<XRecyclerView> refreshView) {

            }
        });
        mRecyclerView = pullRecycleView.getRefreshableView();
        mRecyclerView.setLoadingListener(new XRecyclerView.LoadingListener() {
            @Override
            public void onRefresh() {

            }

            @Override
            public void onLoadMore() {
                page++;
                startRequest();
            }
        });
    }

    private void initAdapter() {
        mAdapter = new ${adapterClass}(this);
        mRecyclerView.setAdapter(mAdapter);
    }

    private void startRequest() {
        if (presenter == null) {
            return;
        }
        ProgressBarUtils.showProgressBar(this);
        //start request
        Map<String, String> paramMap = new HashMap<>();
        paramMap.put("page", String.valueOf(page));
        presenter.mainRequest(paramMap);
    }

    @Override
    public void mainResponse(List<${beanClass}> response) {
        ProgressBarUtils.hideProgressBar(this);
        if (mAdapter == null || response == null) {
            if (tipViewManager != null) {
                tipViewManager.showTipView(ITipViewConfig.INetRrrorConfig.NET_ERROR_CONFIG);
            }
            return;
        }
        if (dataList == null) {
            dataList = new ArrayList<>();
        }
        if (page == 1) {
            dataList.clear();
        }
        dataList.addAll(response);
        mAdapter.updateData(dataList);
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
