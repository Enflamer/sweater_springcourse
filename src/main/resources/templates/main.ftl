<#import "parts/common.ftl" as c>

<@c.page>
    <form  method="post" action="/main">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Search directory:</label>
        <div class="col-sm-6">
            <input type="text" name="directory" class="form-control" placeholder="C:\" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">File mask:</label>
        <div class="col-sm-6">
            <input type="password" name="mask" class="form-control" placeholder="*.*" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Text to search:</label>
        <div class="col-sm-6">
            <input type="password" name="text" class="form-control" />
        </div>
    </div>
        <button class="btn btn-primary" type="submit">Search</button>
        <button class="btn btn-primary" type="submit">Clear</button>
    </form>
    <form>
        <div class="col-md-3">

            <h3 class="text-success">A demo of Easy Tree</h3>

            <div class="easy-tree">

                <ul>

                    <li>Parent 1</li>

                    <li>Parent 2</li>

                    <li>Parent 3

                        <ul>

                            <li>Child 1</li>

                            <li>Child 2

                                <ul>

                                    <li>Grand-child 1</li>

                                    <li>Grand-child 2</li>

                                    <li>Grand-child 3</li>

                                    <li>Grand-child 4</li>

                                </ul>

                            </li>

                            <li>Child 3</li>

                            <li>Child 4</li>

                        </ul>

                    </li>

                    <li>Parent 4

                        <ul>

                            <li>Parent 4 Child 1</li>

                            <li>Parent 4 Child 2</li>

                            <li>Parent 4 Child 3</li>

                            <li>Parent 4 Child 4

                                <ul>

                                    <li>Grand-child 1</li>

                                    <li>Grand-child 2</li>

                                    <li>Grand-child 3</li>

                                    <li>Grand-child 4</li>

                                </ul>

                            </li>

                        </ul>

                    </li>

                </ul>

            </div>

        </div>
    </form>
</@c.page>