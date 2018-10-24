import React from "react";
import PropTypes from "prop-types";
import ReactTable from "react-table";
import "react-table/react-table.css";
import EditButton from "./EditButton";

class Table extends React.Component {
  render() {
    return (
      <div>
        <ReactTable
          data={this.props.books}
          columns={[
            {
              Header: "Cover",
              accessor: "cover"
            },
            {
              Header: "Title",
              accessor: "title"
            },
            {
              Header: "Author",
              accessor: "author"
            },
            {
              Header: "Edit",
              accessor: book => <EditButton book={book} />,
              id: "id"
            }
          ]}
          // edit function
        />
      </div>
    );
  }
}

Table.propTypes = {
  table: PropTypes.string
};

export default Table;
