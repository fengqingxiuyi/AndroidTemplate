package ${packageName};

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import ${packageName}.request.bean.${beanClass};

import java.util.ArrayList;
import java.util.List;

import cn.atmobi.mamhao.R;

public class ${adapterClass} extends RecyclerView.Adapter<${adapterClass}.RecyclerViewViewHolder> {

    Context context;
    //data source
    List<${beanClass}> dataList;

    public ${adapterClass}(Context context) {
        this.context = context;
    }

    @NonNull
    @Override
    public RecyclerViewViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new RecyclerViewViewHolder(LayoutInflater.from(context).inflate(R.layout.${adapterLayoutName}, parent, false));
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerViewViewHolder holder, int position) {
        if (dataList == null || dataList.get(position) == null) {
            return;
        }
        ${beanClass} data = dataList.get(position);
        //set data

    }

    @Override
    public int getItemCount() {
        return dataList == null ? 0 : dataList.size();
    }

    public void updateData(List<${beanClass}> list) {
        if (list == null) {
            return;
        }
        if (dataList == null) {
            dataList = new ArrayList<>();
        } else {
            dataList.clear();
        }
        dataList.addAll(list);
        notifyDataSetChanged();
    }

    class RecyclerViewViewHolder extends RecyclerView.ViewHolder {

        public RecyclerViewViewHolder(View itemView) {
            super(itemView);

        }

    }

}
