package ${packageName}.request.api;

import com.mmh.base_library.network.http.HttpService;
import com.mmh.base_library.network.http.MmhRouteInterface;

import java.util.Map;

import ${packageName}.request.tag.${tagClass};
import rx.Observable;

/**
 * Api
 */
public class ${apiClass} implements MmhRouteInterface<Observable, Object>, ${tagClass} {

    @Override
    public Observable route(Object object, int tag, Map<String, String> param) {
        if (!(object instanceof HttpService)) {
            return null;
        }
        HttpService httpService = (HttpService) object;
        switch (tag) {
            case REQUEST_TAG_MAIN:
                return null;
        }
        return null;
    }
}
