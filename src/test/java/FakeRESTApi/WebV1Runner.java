package FakeRESTApi;

import com.intuit.karate.junit5.Karate;

class WebV1Runner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features").relativeTo(getClass());
    }
}
