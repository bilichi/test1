defineClass("ViewController", {
            tableView_cellForRowAtIndexPath: function(tableView, indexPath) {
            var cellId='cellId';
            var cell=tableView.dequeueReusableCellWithIdentifier(cellId);
            if(cell==0)
            {
            cell=require('UITableViewCell').alloc().initWithStyle_reuseIdentifier(0,cellId);
            }
            var row = indexPath.row()
            var datasource=self.valueForKey('_dataSource');
            if (datasource.count() > row) {  //加上判断越界的逻辑
            cell.textLabel().setText(datasource.objectAtIndex(row));
            cell.detailTextLabel().setText('name')
            }
            return cell;
            }
            
            }
            )
