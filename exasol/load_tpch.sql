-- IMPORT INTO test.supplier
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/supplier.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.region
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/region.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.nation
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/nation.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.part
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/part.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.partsupp
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/partsupp.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.customer
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/customer.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

-- IMPORT INTO test.orders
-- FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/orders.tbl.mod'
-- ENCODING = 'UTF-8'
-- ROW SEPARATOR = 'LF'
-- COLUMN SEPARATOR = '|';

IMPORT INTO test.lineitem
FROM LOCAL CSV FILE '/extra_disk1/columnstore-tooling/tpc-h/dbgen/lineitem.tbl.mod'
ENCODING = 'UTF-8'
ROW SEPARATOR = 'LF'
COLUMN SEPARATOR = '|';
