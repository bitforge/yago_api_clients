import { Configuration, HealthApi } from '../src';
import fetch from 'node-fetch';

// Unfortunately, this test does not work since fetch is missing in node
// Couldn't get any of the available mocks working yet

describe('Test API is up and reachable', () => {
    test('Check health status is ok', async () => {
        const healthApi = new HealthApi(
            new Configuration({
                fetchApi: fetch as any,
            })
        );
        const healthStatus = await healthApi.healthRetrieve();
        expect(healthStatus.dbUp).toEqual(true);
        expect(healthStatus.storageUp).toEqual(true);
        expect(healthStatus.cacheUp).toEqual(true);
    });
});
