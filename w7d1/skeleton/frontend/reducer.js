const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  window.reducer = reducer
  switch (action.type) {
    case 'SWITCH_CURRENCY':
      return {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      };
    default:
      return state;
  }
};
export default reducer;
