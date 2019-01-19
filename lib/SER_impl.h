/* -*- c++ -*- */
/*
 * Copyright 2019 Yu Wang.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_RPI_IOT_SER_IMPL_H
#define INCLUDED_RPI_IOT_SER_IMPL_H

#include <rpi_iot/SER.h>
#include <vector>


namespace gr {
  namespace rpi_iot {

    class SER_impl : public SER
    {
     private:
      // Nothing to declare in this block.
      long d_window_size;
      long cur_store_idx;
      std::vector<bool> comp_stack;

     public:
      SER_impl(long window_size);
      ~SER_impl();

      // Where all the action really happens
      void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      int general_work(int noutput_items,
           gr_vector_int &ninput_items,
           gr_vector_const_void_star &input_items,
           gr_vector_void_star &output_items);
    };

  } // namespace rpi_iot
} // namespace gr

#endif /* INCLUDED_RPI_IOT_SER_IMPL_H */
