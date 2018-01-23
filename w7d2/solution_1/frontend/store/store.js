import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  const store = createStore(
                  rootReducer,
                  preloadedState,
                  applyMiddleware(addLoggingToDispatch)
                );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingToDispatch = store => next => action => {
  const MYDispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);
  MYDispatch(action);
  console.log(store.getState());
};

export default configureStore;
//
