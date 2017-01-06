import React, { PropTypes } from 'react';

var Application = React.createClass({

    getInitialState: function () {
    return {
      selectedOption: 'option1'
    };
  },

  handleOptionChange: function (changeEvent) {
  this.setState({
    selectedOption: changeEvent.target.value
  });
},

  render() {
    return (
    <div>
      <form >
          <p>
            Client current housing type?
          </p>
          <div className="radio">
            <label htmlFor="housing">
              <input  type="radio" value="option1" checked={this.state.selectedOption === 'option1'} onChange={this.handleOptionChange} />
              Homeless/Live in a shelter
            </label>
          </div>

          <div className="radio">
            <label htmlFor="housing">
              <input  type="radio" value="option2" checked={this.state.selectedOption === 'option2'} onChange={this.handleOptionChange} />
              Emergency shelter
            </label>
          </div>

          <div className="radio">
            <label htmlFor="housing">
              <input  type="radio" value="option3" checked={this.state.selectedOption === 'option3'} onChange={this.handleOptionChange} />
              Transitional Housing
            </label>
          </div>

          <div className="radio">
            <label htmlFor="housing">
              <input  type="radio" value="option4" checked={this.state.selectedOption === 'option4'} onChange={this.handleOptionChange} />
            Renting
            </label>
          </div>
        </form>
      </div>
      );
    }

  });

  module.exports = Application;
