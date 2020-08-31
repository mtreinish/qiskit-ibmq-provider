# This code is part of Qiskit.
#
# (C) Copyright IBM 2017, 2018.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.


.PHONY: lint style test mypy

lint:
	pylint -rn qiskit_ibmq_provider test

mypy:
	mypy --module qiskit_ibmq_provider --show-error-codes

style:
	pycodestyle qiskit_ibmq_provider test

test:
	python -m unittest -v
